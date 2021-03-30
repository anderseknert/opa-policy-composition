# opa-policy-composition

Example policies demonstrating policy composition.

## Running

`opa run --server --set default_decision=/main/decision .`

Query OPA (use team1-3 as input, and try removing the `explain` attribute):

`curl -d '{"team": "team1","explain": true}' http://localhost:8181`
