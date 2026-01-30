package alpha.delivery_strategy

default strategy := ["tunnel","smime","seal"]

strategy := ["smtp"] if {
    contains(lower(input.subject), "[non-confidential]")
}

