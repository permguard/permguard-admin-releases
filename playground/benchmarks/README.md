<!-- Copyright (c) 2022 Nitro Agility S.r.l. -->
<!-- SPDX-License-Identifier: Apache-2.0 -->

# Atlas Commerce benchmarks

Suites for the *Benchmarks* page of Permguard Admin, under Policy Evaluations.
Each folder holds a `suite.yml` and the request documents it names.
Open the playground's `workspace/` folder in Permguard Admin and the Benchmarks page lists them at once, beside the workspace; pick one and start it against the `commerce/order-platform` ledger of this playground.

| Suite           | What it simulates                                                                   | Calls    |
| --------------- | ----------------------------------------------------------------------------------- | -------- |
| `policy-smoke`  | every decision of the ledger, once each, one call at a time: run it after a publish | 17       |
| `checkout-peak` | the Rego payment gateway at a Black Friday peak, 16 calls in flight                 | 30 × 100 |
| `refund-desk`   | the Cedar back office on a Monday morning, 8 calls in flight                        | 25 × 100 |

Clone `commerce/order-platform` in the Sync Center before a run: the suites name the deciding policies by alias, and an alias is known only from a clone; without one, the decisions are still checked and the policies are reported as unverified.
Every request is a real one: its expectation is what the published policies decide, with the policies that decide it, so a mismatch is a change in the policies, not in the suite.
The same documents are valid for *Import* on the Policy Decision Point page and for `permguard check -f`.
