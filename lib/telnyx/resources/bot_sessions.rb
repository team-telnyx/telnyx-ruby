# frozen_string_literal: true

module Telnyx
  module Resources
    # Agentic (bot) signup for Telnyx accounts. An AI agent solves a reverse-CAPTCHA
    # challenge designed to be easy for LLMs and hard for humans, registers an
    # account, and signs in by consuming a magic link emailed to the account owner.
    # All endpoints are public and unauthenticated; signup endpoints are additionally
    # gated by the freemium feature flags and per-country availability.
    class BotSessions
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::BotSessionListParams} for more details.
      #
      # Consumes the one-time portal redirect (magic link) token emailed during bot
      # signup and returns an API session. The token is a UUIDv7 that encodes its
      # creation time; it expires after a configurable validity window (15 minutes by
      # default) and is cleared on first use. Although the action creates a session, the
      # route uses the GET verb because it is opened from an email link. On first use
      # the account is also initialized. For bot signup (freemium) accounts the response
      # is a minimal envelope containing only the `api_v2_token`; accounts that are
      # permitted to use magic links but are not freemium accounts may instead receive
      # an extended session payload when additional steps (such as two-factor
      # authentication or identity verification) are required. This endpoint is public;
      # the magic link token in the query string is the credential.
      #
      # @overload list(email:, portal_redirect_token:, request_options: {})
      #
      # @param email [String] Email address associated with the magic link token.
      #
      # @param portal_redirect_token [String] Single-use portal redirect (magic link) token, a UUIDv7 sent to the account owne
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BotSessionListResponse]
      #
      # @see Telnyx::Models::BotSessionListParams
      def list(params)
        parsed, options = Telnyx::BotSessionListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v2/bot_sessions",
          query: query,
          model: Telnyx::Models::BotSessionListResponse,
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
