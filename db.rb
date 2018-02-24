require "pg"

DATABASE_URL = ENV["DATABASE_URL"]
$connection = PG.connect(DATABASE_URL)

module DB

  def self.connection
    $connection.reset if $connection.status == PG::CONNECTION_BAD
    $connection
  end

  def self.all_people
    $connection.exec("SELECT * FROM people") do |results|
      results.map { |row| { id: row['id'], name: row['name'] } }
    end
  end

  def self.person(id)
    $connection.exec_params("SELECT * FROM people WHERE id = $1 LIMIT 1", [id]) do |results|
      results.first
    end
  end

  def self.update_person(id, new_details)
    query = <<SQL
UPDATE people 
SET 
  rsvp_response = $1,
  meal_choice = $2,
  dietary_requirements = $3,
  comments = $4
WHERE id = $5;
SQL

    $connection.exec_params(query, [
      new_details[:rsvp_response],
      new_details[:meal_choice],
      new_details[:dietary_requirements],
      new_details[:comments],
      id
    ])
  end

end
