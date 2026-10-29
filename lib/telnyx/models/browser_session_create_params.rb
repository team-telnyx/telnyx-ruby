# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BrowserSessions#create
    class BrowserSessionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute policy
      #
      #   @return [Telnyx::Models::BrowserSessionCreateParams::Policy]
      required :policy, -> { Telnyx::BrowserSessionCreateParams::Policy }

      # @!attribute idempotency_key
      #   Scoped to the organization. The same key and identical normalized policy,
      #   limits, and metadata replay the existing session (HTTP 201); a different request
      #   returns 409 idempotency_conflict. Replays do not restart terminal sessions.
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute limits
      #
      #   @return [Telnyx::Models::BrowserSessionCreateParams::Limits, nil]
      optional :limits, -> { Telnyx::BrowserSessionCreateParams::Limits }

      # @!attribute metadata
      #   Arbitrary key-value metadata.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(policy:, idempotency_key: nil, limits: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BrowserSessionCreateParams} for more details.
      #
      #   @param policy [Telnyx::Models::BrowserSessionCreateParams::Policy]
      #
      #   @param idempotency_key [String] Scoped to the organization. The same key and identical normalized policy, limits
      #
      #   @param limits [Telnyx::Models::BrowserSessionCreateParams::Limits]
      #
      #   @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Policy < Telnyx::Internal::Type::BaseModel
        # @!attribute allowed_domains
        #   Domain patterns the browser can navigate to. Exact match (example.com) or
        #   wildcard (\*.example.com). IP literals not allowed.
        #
        #   @return [Array<String>]
        required :allowed_domains, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(allowed_domains:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BrowserSessionCreateParams::Policy} for more details.
        #
        #   @param allowed_domains [Array<String>] Domain patterns the browser can navigate to. Exact match (example.com) or wildca
      end

      class Limits < Telnyx::Internal::Type::BaseModel
        # @!attribute idle_timeout_s
        #   Idle timeout in seconds. Must not exceed lifetime_s.
        #
        #   @return [Integer, nil]
        optional :idle_timeout_s, Integer

        # @!attribute lifetime_s
        #   Max session duration in seconds (60-1800).
        #
        #   @return [Integer, nil]
        optional :lifetime_s, Integer

        # @!method initialize(idle_timeout_s: nil, lifetime_s: nil)
        #   @param idle_timeout_s [Integer] Idle timeout in seconds. Must not exceed lifetime_s.
        #
        #   @param lifetime_s [Integer] Max session duration in seconds (60-1800).
      end
    end
  end
end
