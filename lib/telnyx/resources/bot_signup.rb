# frozen_string_literal: true

module Telnyx
  module Resources
    # Agentic (bot) signup for Telnyx accounts. An AI agent solves a reverse-CAPTCHA
    # challenge designed to be easy for LLMs and hard for humans, registers an
    # account, and signs in by consuming a magic link emailed to the account owner.
    # All endpoints are public and unauthenticated; signup endpoints are additionally
    # gated by the freemium feature flags and per-country availability.
    class BotSignup
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::BotSignupCreateParams} for more details.
      #
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
      #
      # @overload create(bot_challenge_answer:, bot_challenge_nonce:, privacy_policy_url:, terms_and_conditions_url:, terms_of_service:, email: nil, terms_and_conditions_eu_url: nil, terms_of_service_eu: nil, request_options: {})
      #
      # @param bot_challenge_answer [String] Answer to the issued bot challenge.
      #
      # @param bot_challenge_nonce [String] Nonce from a previously issued bot challenge.
      #
      # @param privacy_policy_url [String] Must exactly match the privacy-policy URL returned by the challenge endpoint.
      #
      # @param terms_and_conditions_url [String] Must exactly match the terms-and-conditions URL returned by the challenge endpoi
      #
      # @param terms_of_service [Boolean, Telnyx::Models::BotSignupCreateParams::TermsOfService] Must be true to accept the terms of service.
      #
      # @param email [String] Email address for the new account. The magic link is sent here. May only be omit
      #
      # @param terms_and_conditions_eu_url [String] EU terms-and-conditions URL. Required when EU consent enforcement is enabled.
      #
      # @param terms_of_service_eu [Boolean, Telnyx::Models::BotSignupCreateParams::TermsOfServiceEu] EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SuccessResponse]
      #
      # @see Telnyx::Models::BotSignupCreateParams
      def create(params)
        parsed, options = Telnyx::BotSignupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/bot_signup",
          body: parsed,
          model: Telnyx::SuccessResponse,
          options: options
        )
      end

      # Resends the one-time sign-in (magic) link for an eligible bot signup account.
      # Eligibility (account exists, was registered through bot signup, is active, and
      # has not exceeded the resend limit or rate window) is evaluated server-side; the
      # response is intentionally uniform and does not reveal whether the account exists
      # or whether a link was actually sent. This endpoint is public and
      # unauthenticated, gated by the freemium feature flags and per-country
      # availability.
      #
      # @overload resend_magic_link(email:, request_options: {})
      #
      # @param email [String] Email address of the bot signup account to resend the magic link to.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SuccessResponse]
      #
      # @see Telnyx::Models::BotSignupResendMagicLinkParams
      def resend_magic_link(params)
        parsed, options = Telnyx::BotSignupResendMagicLinkParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/bot_signup/resend_magic_link",
          body: parsed,
          model: Telnyx::SuccessResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
