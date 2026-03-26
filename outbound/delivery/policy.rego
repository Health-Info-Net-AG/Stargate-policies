package outbound.delivery

default strategy := ["tunnel","smime","smtp"]

strategy := ["tunnel", "smime", "seal"] if {
    subject := lower(input.subject)
    k := data.keywords[_]
    contains(subject, lower(k))
}

