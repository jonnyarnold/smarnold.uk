// Similarity is:
// 1 when lookup === term
// 0 when nothing in lookup is in term
function similarity(lookup, term) {
  var regex = new RegExp(lookup.split("").join(".*"), "i")
  return regex.test(term) ? 1 : 0
}
