# typed: strong

module Telnyx
  module Resources
    # Agentic (bot) signup for Telnyx accounts. An AI agent solves a reverse-CAPTCHA
    # challenge designed to be easy for LLMs and hard for humans, registers an
    # account, and signs in by consuming a magic link emailed to the account owner.
    # All endpoints are public and unauthenticated; signup endpoints are additionally
    # gated by the freemium feature flags and per-country availability.
    class BotChallenge
      # Generates a reverse-CAPTCHA challenge used to gate the bot signup flow. A random
      # active problem is selected from the pool; math problems are returned obfuscated
      # (case randomization, symbol injection, spacing noise) with an unobfuscated
      # rounding instruction appended, while string and binary problems are returned
      # as-is. The response contains a single-use nonce, the problem text, and the
      # current terms-and-conditions and privacy-policy URLs, which must be echoed back
      # on the signup request. Challenges expire after a short window (10 minutes by
      # default) and can only be answered once. This endpoint is public and
      # unauthenticated.
      sig do
        params(
          llm_model_name: String,
          llm_parameter_count: String,
          llm_quantization: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BotChallengeCreateResponse)
      end
      def create(
        # Name of the LLM the client is using.
        llm_model_name: nil,
        # Parameter count of the client LLM.
        llm_parameter_count: nil,
        # Quantization of the client LLM.
        llm_quantization: nil,
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
