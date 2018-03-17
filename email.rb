require 'mailgun'

$mailgun_api_key = ENV['MAILGUN_API_KEY']
$mailgun_domain = ENV['MAILGUN_DOMAIN']

$mailer = Mailgun::Client.new $mailgun_api_key

module Email

  def self.send_update_notification(person)
    $mailer.send_message $mailgun_domain, {
      from: "Smarnold <smarnold@#{$mailgun_domain}>",
      to: ["Sarah-May <sarahmaygould@hotmail.co.uk>","Jonny <jonny.arnold89@gmail.com>"],
      subject: "#{person['name']} has changed their RSVP!",
      text: """
        #{person['name']} has changed their RSVP!

        Going?
        #{person['rsvp_response']}

        Meal Choice: 
        #{person['meal_choice']}

        Dietary Requirements:
        #{person['dietary_requirements']}

        Comments: 
        #{person['comments']}

        Cheers!
        Your Awesome Website
      """
    }
  end

end
