package outbound.delivery

default strategy := ["tunnel","smime","smtp"]

strategy := ["tunnel", "smime", "seal"] if {
    subject := lower(input.subject)
    k := data.keywords[_]
    contains(subject, lower(k))
}

strategy := ["tunnel", "smime", "seal"] if {
    v := input.headers["Sensitivity"][_]
    lower(trim_space(v)) == "company-confidential"
}
