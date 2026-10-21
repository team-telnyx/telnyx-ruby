# frozen_string_literal: true

module Telnyx
  module Models
    module TtsIntegrations
      # @see Telnyx::Resources::TtsIntegrations::Actions#test_connection
      class CommunityTtsConformanceRun < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute checks
        #   Each check is `ok`, `failed` or `skipped`: `voices_url_reachable`,
        #   `voices_schema_valid`, `handshake`, `auth`, `init_accepted`, `audio_received`,
        #   `final_frame_received`, `clean_close`.
        #
        #   @return [Hash{Symbol=>Symbol, Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun::Check}]
        required :checks,
                 -> { Telnyx::Internal::Type::HashOf[enum: Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check] }

        # @!attribute kind
        #   `test_connection`: run by the owner. `conformance`: run by Telnyx during review.
        #
        #   @return [Symbol, Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun::Kind]
        required :kind, enum: -> { Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind }

        # @!attribute success
        #   `true` when every check is `ok`.
        #
        #   @return [Boolean]
        required :success, Telnyx::Internal::Type::Boolean

        # @!attribute error
        #   The first failure, in words.
        #
        #   @return [String, nil]
        optional :error, String, nil?: true

        # @!attribute latency_ms
        #   How long the whole run took.
        #
        #   @return [Integer, nil]
        optional :latency_ms, Integer, nil?: true

        # @!attribute started_at
        #
        #   @return [Time, nil]
        optional :started_at, Time

        # @!attribute time_to_first_audio_ms
        #
        #   @return [Integer, nil]
        optional :time_to_first_audio_ms, Integer, nil?: true

        # @!attribute voice_id
        #
        #   @return [String, nil]
        optional :voice_id, String, nil?: true

        # @!method initialize(id:, checks:, kind:, success:, error: nil, latency_ms: nil, started_at: nil, time_to_first_audio_ms: nil, voice_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun} for more details.
        #
        #   One recorded run of `test_connection`.
        #
        #   @param id [String]
        #
        #   @param checks [Hash{Symbol=>Symbol, Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun::Check}] Each check is `ok`, `failed` or `skipped`: `voices_url_reachable`, `voices_schem
        #
        #   @param kind [Symbol, Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun::Kind] `test_connection`: run by the owner. `conformance`: run by Telnyx during review.
        #
        #   @param success [Boolean] `true` when every check is `ok`.
        #
        #   @param error [String, nil] The first failure, in words.
        #
        #   @param latency_ms [Integer, nil] How long the whole run took.
        #
        #   @param started_at [Time]
        #
        #   @param time_to_first_audio_ms [Integer, nil]
        #
        #   @param voice_id [String, nil]

        module Check
          extend Telnyx::Internal::Type::Enum

          OK = :ok
          FAILED = :failed
          SKIPPED = :skipped

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `test_connection`: run by the owner. `conformance`: run by Telnyx during review.
        #
        # @see Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun#kind
        module Kind
          extend Telnyx::Internal::Type::Enum

          TEST_CONNECTION = :test_connection
          CONFORMANCE = :conformance

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
