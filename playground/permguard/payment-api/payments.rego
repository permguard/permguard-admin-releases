# Copyright (c) 2022 Nitro Agility S.r.l.
# SPDX-License-Identifier: Apache-2.0
# METADATA
# custom:
#   alias: payment-capture-boundary
package atlas.payment_api

import rego.v1

default allow := false

# Capturing funds is a machine-to-machine operation. The gateway requires the
# checkout workload identity, verified mTLS, a narrow scope, merchant isolation,
# an idempotency key, and an amount no larger than the prior authorization.
allow if {
	input.action.name == "api:capturePayment"
	input.subject.type == "ServiceAccount"
	input.subject.properties.service == "checkout-service"
	input.subject.properties.mtls_verified
	"payments:capture" in input.subject.properties.scopes
	input.subject.properties.merchant == input.resource.properties.merchant
	input.context.method == "POST"
	input.context.idempotency_key != ""
	input.context.amount_cents > 0
	input.context.amount_cents <= input.resource.properties.authorized_amount_cents
}

# A support integration may read an order, but never across merchant boundaries.
allow if {
	input.action.name == "api:readOrder"
	input.subject.properties.mtls_verified
	"orders:read" in input.subject.properties.scopes
	input.subject.properties.merchant == input.resource.properties.merchant
	input.context.method == "GET"
}
