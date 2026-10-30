<!-- Copyright (c) 2022 Nitro Agility S.r.l. -->
<!-- SPDX-License-Identifier: Apache-2.0 -->

# Atlas Commerce benchmarks

Suites for the *Benchmarks* page of Permguard Admin, under Policy Evaluations.
Each folder holds a `suite.yml` and the request documents it names.
They live in the workspace's own `benchmarks/` folder, the only place the Benchmarks page reads suites from: open the playground's `workspace/` folder in Permguard Admin and they are listed at once; pick one and start it against the `commerce/order-platform` ledger of this playground.

| Suite           | What it simulates                                                                   | Calls    |
| --------------- | ----------------------------------------------------------------------------------- | -------- |
| `policy-smoke`  | every decision of the ledger, once each, one call at a time: run it after a publish | 17       |
| `checkout-peak` | the Rego payment gateway at a Black Friday peak, 16 calls in flight                 | 30 × 100 |
| `refund-desk`   | the Cedar back office on a Monday morning, 8 calls in flight                        | 25 × 100 |

No clone is needed: the suites name the deciding policies by alias, and a run reads the aliases from a copy of the ledger it keeps for itself.
Every request is a real one: its expectation is what the published policies decide, with the policies that decide it, so a mismatch is a change in the policies, not in the suite.
The same documents are valid for *Import* on the Policy Decision Point page and for `permguard check -f`.
