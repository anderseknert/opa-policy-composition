package main_test

import data.main

test_team1_denies {
    main.decision == {
        "allow": false,
        "reason": "denied by team1.policy1 | denied by team1.policy2"
    } with input.team as "team1"
}