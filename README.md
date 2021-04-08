# opa-policy-composition

Example policies demonstrating policy composition in Rego. These example accompany the [blog post](https://blog.styra.com/blog/dynamic-policy-composition-for-opa) on the same topic as found on the [Styra](https://www.styra.com) blog.

## Running

`opa run --server --set default_decision=/main/decision .`

Query OPA (use team1-3 as input, and try removing the `explain` attribute):

`curl -d '{"team": "team1","explain": true}' http://localhost:8181`
