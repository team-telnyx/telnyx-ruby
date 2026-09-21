# typed: strong

module Telnyx
  module Resources
    # Agentic (bot) signup for Telnyx accounts. An AI agent solves a reverse-CAPTCHA
    # challenge designed to be easy for LLMs and hard for humans, registers an
    # account, and signs in by consuming a magic link emailed to the account owner.
    # All endpoints are public and unauthenticated; signup endpoints are additionally
    # gated by the freemium feature flags and per-country availability.
    class BotSignup
      # Creates a freemium Telnyx account through the agentic signup flow. The request
      # must carry a valid answer to a previously issued bot challenge
      # (`bot_challenge_nonce` and `bot_challenge_answer`), accept the terms of service,
      # and echo the exact terms-and-conditions and privacy-policy URLs returned by the
      # challenge endpoint. When EU consent enforcement is enabled,
      # `terms_of_service_eu` and `terms_and_conditions_eu_url` are also required. On
      # success a one-time sign-in (magic) link is emailed to the address provided; if
      # the email address belongs to an existing account, a sign-in link is sent instead
      # of creating a duplicate account. `email` may only be omitted when
      # placeholder-email registration is enabled server-side. This endpoint is public
      # and unauthenticated, gated by the freemium feature flags and per-country
      # availability, and subject to per-IP and per-domain registration limits.
      sig do
        params(
          bot_challenge_answer: String,
          bot_challenge_nonce: String,
          privacy_policy_url: String,
          terms_and_conditions_url: String,
          terms_of_service:
            Telnyx::BotSignupCreateParams::TermsOfService::OrBoolean,
          email: String,
          terms_and_conditions_eu_url: String,
          terms_of_service_eu:
            Telnyx::BotSignupCreateParams::TermsOfServiceEu::OrBoolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::SuccessResponse)
      end
      def create(
        # Answer to the issued bot challenge.
        bot_challenge_answer:,
        # Nonce from a previously issued bot challenge.
        bot_challenge_nonce:,
        # Must exactly match the privacy-policy URL returned by the challenge endpoint.
        privacy_policy_url:,
        # Must exactly match the terms-and-conditions URL returned by the challenge
        # endpoint.
        terms_and_conditions_url:,
        # Must be true to accept the terms of service.
        terms_of_service:,
        # Email address for the new account. The magic link is sent here. May only be
        # omitted when placeholder-email registration is enabled server-side.
        email: nil,
        # EU terms-and-conditions URL. Required when EU consent enforcement is enabled.
        terms_and_conditions_eu_url: nil,
        # EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
        terms_of_service_eu: nil,
        request_options: {}
      )
      end

      # Resends the one-time sign-in (magic) link for an eligible bot signup account.
      # Eligibility (account exists, was registered through bot signup, is active, and
      # has not exceeded the resend limit or rate window) is evaluated server-side; the
      # response is intentionally uniform and does not reveal whether the account exists
      # or whether a link was actually sent. This endpoint is public and
      # unauthenticated, gated by the freemium feature flags and per-country
      # availability.
      sig do
        params(
          email: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::SuccessResponse)
      end
      def resend_magic_link(
        # Email address of the bot signup account to resend the magic link to.
        email:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
