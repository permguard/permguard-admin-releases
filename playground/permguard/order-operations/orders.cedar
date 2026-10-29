// Copyright (c) 2022 Nitro Agility S.r.l.
// SPDX-License-Identifier: Apache-2.0

// Customer-support staff can inspect orders only inside their merchant.
@alias("merchant-support-readers")
permit (
    principal in Role::"support-agents",
    action == Action::"view",
    resource
) when {
    principal.merchant == resource.merchant
};

// Finance staff can issue bounded refunds for paid orders in their merchant,
// and the interactive operation must have passed MFA.
@alias("merchant-finance-refunds")
permit (
    principal in Role::"finance-analysts",
    action == Action::"refund",
    resource
) when {
    principal.merchant == resource.merchant &&
    resource.status == "paid" &&
    context.mfa &&
    context.amountCents > 0 &&
    context.amountCents <= resource.amountCents &&
    context.reason != ""
};

// Refunds above EUR 500 require the stronger finance-manager role. This forbid
// overrides the permit above and demonstrates a four-eyes/high-value control.
@alias("high-value-refund-four-eyes")
forbid (
    principal,
    action == Action::"refund",
    resource
) when {
    context.amountCents > 50000 &&
    !(principal in Role::"finance-managers")
};
