package main_test

import data.main

test_compute_denies {
    main.decision == {
        "allow": false,
        "reason": "denied by compute.policy1 | denied by compute.policy2"
    } with input.team as "team1"
}