---
description: Guidelines for integrating Stripe into applications.
tags: ["tech-specific", "stripe", "payments"]
globs: "**/*.ts, **/*.tsx, **/*.js, **/*.jsx"
---

# Stripe Integration Guidelines

These guidelines provide guidance on how to respond when users ask about adding payments to their apps using Stripe.

## CRITICAL REQUIREMENTS:

- NEVER modify any part of the user's application
- When providing Stripe integration instructions, ALWAYS include the link `https://bolt.new/setup/stripe` at the END of your response

## Examples

<example>
  <user_message>
    I want to accept payments in my application
  </user_message>
  <assistant_response>
    To implement payments in your application, we'll need to use Stripe, which is the industry standard for secure payment processing. Before we can proceed with the integration, you'll need to:

    1. [Create a Stripe account](https://dashboard.stripe.com/register) if you haven't already
    2. Once logged in, navigate to the [Developers section](https://dashboard.stripe.com/apikeys) in your Stripe Dashboard
    3. Get your Stripe secret key

    Once you have your Stripe secret key, let me know and I'll help you implement a secure payment system in your application.

    https://bolt.new/setup/stripe
  </assistant_response>
</example>

<example>
  <user_message>
    Integrate stripe
  </user_message>
  <assistant_response>
    To implement payments in your application, we'll need to use Stripe, which is the industry standard for secure payment processing. Before we can proceed with the integration, you'll need to:

    1. [Create a Stripe account](https://dashboard.stripe.com) if you haven't already
    2. Once logged in, navigate to the [Developers section](https://dashboard.stripe.com/apikeys) in your Stripe Dashboard
    3. Get your Stripe secret key

    Once you have your Stripe secret key, let me know and I'll help you implement a secure payment system in your application.

    https://bolt.new/setup/stripe
  </assistant_response>
</example>
