# typed: strong

module Telnyx
  module Resources
    # Agentic (bot) signup for Telnyx accounts. An AI agent solves a reverse-CAPTCHA
    # challenge designed to be easy for LLMs and hard for humans, registers an
    # account, and signs in by consuming a magic link emailed to the account owner.
    # All endpoints are public and unauthenticated; signup endpoints are additionally
    # gated by the freemium feature flags and per-country availability.
    class BotSessions
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
      sig do
        params(
          email: String,
          portal_redirect_token: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BotSessionListResponse)
      end
      def list(
        # Email address associated with the magic link token.
        email:,
        # Single-use portal redirect (magic link) token, a UUIDv7 sent to the account
        # owner's email.
        portal_redirect_token:,
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
