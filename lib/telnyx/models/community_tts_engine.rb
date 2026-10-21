# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#create
    class CommunityTtsEngine < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute capabilities
      #   What the engine supports. An unknown key is rejected.
      #
      #   @return [Telnyx::Models::CommunityTtsEngineCapabilities]
      required :capabilities, -> { Telnyx::CommunityTtsEngineCapabilities }

      # @!attribute name
      #   The engine's unique name: the first part of its voices.
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #   Whether the engine can serve traffic right now, independent of `visibility` and
      #   `review_status`. `draft`: not yet approved (new and awaiting its first review,
      #   rejected and awaiting a fix, or approved earlier and awaiting re-review after a
      #   review-sensitive change). `active`: serving traffic. `disabled`: owner-paused,
      #   reversible via `enable`. `suspended`: paused by Telnyx (repeated failures of a
      #   public engine, or an abuse action); the owner cannot clear this by calling
      #   `enable`, and Telnyx can reinstate it.
      #
      #   @return [Symbol, Telnyx::Models::CommunityTtsEngineStatus]
      required :status, enum: -> { Telnyx::CommunityTtsEngineStatus }

      # @!attribute supported_audio_formats
      #
      #   @return [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>]
      required :supported_audio_formats,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CommunityTtsAudioFormat] }

      # @!attribute visibility
      #   `private`: only your organization can use the engine. `public`: any organization
      #   can, once it is `active`.
      #
      #   @return [Symbol, Telnyx::Models::CommunityTtsEngineVisibility]
      required :visibility, enum: -> { Telnyx::CommunityTtsEngineVisibility }

      # @!attribute voices_url
      #
      #   @return [String]
      required :voices_url, String

      # @!attribute websocket_url
      #
      #   @return [String]
      required :websocket_url, String

      # @!attribute connect_timeout_ms
      #
      #   @return [Integer, nil]
      optional :connect_timeout_ms, Integer

      # @!attribute contact_email
      #
      #   @return [String, nil]
      optional :contact_email, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute data_retention_policy_url
      #
      #   @return [String, nil]
      optional :data_retention_policy_url, String, nil?: true

      # @!attribute documentation_url
      #
      #   @return [String, nil]
      optional :documentation_url, String, nil?: true

      # @!attribute review_notes
      #   The reviewer's notes on a rejection.
      #
      #   @return [String, nil]
      optional :review_notes, String, nil?: true

      # @!attribute review_status
      #   `null`: never submitted, or an approved engine whose review-sensitive field
      #   changed and awaits re-review. `pending`: submitted. `approved`: approved.
      #   `rejected`: rejected, with `review_notes`.
      #
      #   @return [Symbol, Telnyx::Models::CommunityTtsEngine::ReviewStatus, nil]
      optional :review_status, enum: -> { Telnyx::CommunityTtsEngine::ReviewStatus }, nil?: true

      # @!attribute reviewed_at
      #
      #   @return [Time, nil]
      optional :reviewed_at, Time, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!attribute voices_api_key_ref
      #
      #   @return [String, nil]
      optional :voices_api_key_ref, String, nil?: true

      # @!attribute voices_count
      #   The number of voices in the stored list.
      #
      #   @return [Integer, nil]
      optional :voices_count, Integer

      # @!attribute voices_degraded
      #   `true` after three failed reads in a row, until a read succeeds. A degraded
      #   engine keeps serving from its last list.
      #
      #   @return [Boolean, nil]
      optional :voices_degraded, Telnyx::Internal::Type::Boolean

      # @!attribute voices_fetched_at
      #   When the stored list was last read successfully.
      #
      #   @return [Time, nil]
      optional :voices_fetched_at, Time, nil?: true

      # @!method initialize(id:, capabilities:, name:, status:, supported_audio_formats:, visibility:, voices_url:, websocket_url:, connect_timeout_ms: nil, contact_email: nil, created_at: nil, data_retention_policy_url: nil, documentation_url: nil, review_notes: nil, review_status: nil, reviewed_at: nil, updated_at: nil, voices_api_key_ref: nil, voices_count: nil, voices_degraded: nil, voices_fetched_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CommunityTtsEngine} for more details.
      #
      #   The full record of a community TTS engine you own. Select its voices by the
      #   engine's `name`, as `<name>.<voice_id>`, with your own key for it
      #   (`api_key_ref`).
      #
      #   @param id [String]
      #
      #   @param capabilities [Telnyx::Models::CommunityTtsEngineCapabilities] What the engine supports. An unknown key is rejected.
      #
      #   @param name [String] The engine's unique name: the first part of its voices.
      #
      #   @param status [Symbol, Telnyx::Models::CommunityTtsEngineStatus] Whether the engine can serve traffic right now, independent of `visibility` and
      #
      #   @param supported_audio_formats [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>]
      #
      #   @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] `private`: only your organization can use the engine. `public`: any organization
      #
      #   @param voices_url [String]
      #
      #   @param websocket_url [String]
      #
      #   @param connect_timeout_ms [Integer]
      #
      #   @param contact_email [String, nil]
      #
      #   @param created_at [Time]
      #
      #   @param data_retention_policy_url [String, nil]
      #
      #   @param documentation_url [String, nil]
      #
      #   @param review_notes [String, nil] The reviewer's notes on a rejection.
      #
      #   @param review_status [Symbol, Telnyx::Models::CommunityTtsEngine::ReviewStatus, nil] `null`: never submitted, or an approved engine whose review-sensitive field chan
      #
      #   @param reviewed_at [Time, nil]
      #
      #   @param updated_at [Time, nil]
      #
      #   @param voices_api_key_ref [String, nil]
      #
      #   @param voices_count [Integer] The number of voices in the stored list.
      #
      #   @param voices_degraded [Boolean] `true` after three failed reads in a row, until a read succeeds. A degraded engi
      #
      #   @param voices_fetched_at [Time, nil] When the stored list was last read successfully.

      # `null`: never submitted, or an approved engine whose review-sensitive field
      # changed and awaits re-review. `pending`: submitted. `approved`: approved.
      # `rejected`: rejected, with `review_notes`.
      #
      # @see Telnyx::Models::CommunityTtsEngine#review_status
      module ReviewStatus
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
