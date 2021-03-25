package main

deny[msg] {
    not input.team
    msg := "Missing input.team attribute"
}

deny[msg] {
    not data.policies[input.team]
    msg := sprintf("No policies from team %v found", [input.team])
}

deny[msg] {
    msg := router[_policy_][_decision_]
}

router[policy] = msg {
    msg := data.policies[input.team][policy].deny
}

decision["allow"] = count(deny) == 0
decision["reason"] =  concat(" | ", deny)
decision["explain"] = router {
    input.explain == true
}