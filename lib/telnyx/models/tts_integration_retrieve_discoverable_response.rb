# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#retrieve_discoverable
    class TtsIntegrationRetrieveDiscoverableResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::CommunityTtsEngineListMeta]
      required :meta, -> { Telnyx::CommunityTtsEngineListMeta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data>]
      #   @param meta [Telnyx::Models::CommunityTtsEngineListMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
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

        # @!attribute visibility
        #   `private`: only your organization can use the engine. `public`: any organization
        #   can, once it is `active`.
        #
        #   @return [Symbol, Telnyx::Models::CommunityTtsEngineVisibility]
        required :visibility, enum: -> { Telnyx::CommunityTtsEngineVisibility }

        # @!attribute capabilities
        #   What the engine supports. An unknown key is rejected.
        #
        #   @return [Telnyx::Models::CommunityTtsEngineCapabilities, nil]
        optional :capabilities, -> { Telnyx::CommunityTtsEngineCapabilities }

        # @!attribute connect_timeout_ms
        #
        #   @return [Integer, nil]
        optional :connect_timeout_ms, Integer

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

        # @!attribute supported_audio_formats
        #
        #   @return [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>, nil]
        optional :supported_audio_formats,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CommunityTtsAudioFormat] }

        # @!attribute voices_count
        #
        #   @return [Integer, nil]
        optional :voices_count, Integer

        # @!attribute websocket_url
        #
        #   @return [String, nil]
        optional :websocket_url, String

        # @!method initialize(id:, name:, status:, visibility:, capabilities: nil, connect_timeout_ms: nil, created_at: nil, data_retention_policy_url: nil, documentation_url: nil, supported_audio_formats: nil, voices_count: nil, websocket_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data} for more
        #   details.
        #
        #   What a caller needs to choose an engine. It carries no publisher contact
        #   details, review notes or credential references.
        #
        #   @param id [String]
        #
        #   @param name [String]
        #
        #   @param status [Symbol, Telnyx::Models::CommunityTtsEngineStatus] Whether the engine can serve traffic right now, independent of `visibility` and
        #
        #   @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] `private`: only your organization can use the engine. `public`: any organization
        #
        #   @param capabilities [Telnyx::Models::CommunityTtsEngineCapabilities] What the engine supports. An unknown key is rejected.
        #
        #   @param connect_timeout_ms [Integer]
        #
        #   @param created_at [Time]
        #
        #   @param data_retention_policy_url [String, nil]
        #
        #   @param documentation_url [String, nil]
        #
        #   @param supported_audio_formats [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>]
        #
        #   @param voices_count [Integer]
        #
        #   @param websocket_url [String]
      end
    end
  end
end
