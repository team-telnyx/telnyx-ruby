# frozen_string_literal: true

module Telnyx
  module Models
    class UpdateCommunityTtsEngineRequest < Telnyx::Internal::Type::BaseModel
      # @!attribute capabilities
      #   What the engine supports. An unknown key is rejected.
      #
      #   @return [Telnyx::Models::CommunityTtsEngineCapabilities, nil]
      optional :capabilities, -> { Telnyx::CommunityTtsEngineCapabilities }

      # @!attribute connect_timeout_ms
      #
      #   @return [Integer, nil]
      optional :connect_timeout_ms, Integer

      # @!attribute contact_email
      #
      #   @return [String, nil]
      optional :contact_email, String, nil?: true

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

      # @!attribute visibility
      #   `private`: only your organization can use the engine. `public`: any organization
      #   can, once it is `active`.
      #
      #   @return [Symbol, Telnyx::Models::CommunityTtsEngineVisibility, nil]
      optional :visibility, enum: -> { Telnyx::CommunityTtsEngineVisibility }

      # @!attribute voices_api_key_ref
      #
      #   @return [String, nil]
      optional :voices_api_key_ref, String, nil?: true

      # @!attribute voices_url
      #   See the create request.
      #
      #   @return [String, nil]
      optional :voices_url, String

      # @!attribute websocket_url
      #   See the create request.
      #
      #   @return [String, nil]
      optional :websocket_url, String

      # @!method initialize(capabilities: nil, connect_timeout_ms: nil, contact_email: nil, data_retention_policy_url: nil, documentation_url: nil, supported_audio_formats: nil, visibility: nil, voices_api_key_ref: nil, voices_url: nil, websocket_url: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UpdateCommunityTtsEngineRequest} for more details.
      #
      #   Only the fields you send change. `name` cannot be changed. Sending `null` for
      #   `websocket_url`, `voices_url`, `supported_audio_formats`, `capabilities` or
      #   `connect_timeout_ms` is refused. Changing `websocket_url`, `voices_url`,
      #   `supported_audio_formats` or `capabilities`, or making a `private` engine
      #   `public`, sends the engine back to `status: draft` and clears its review.
      #
      #   @param capabilities [Telnyx::Models::CommunityTtsEngineCapabilities] What the engine supports. An unknown key is rejected.
      #
      #   @param connect_timeout_ms [Integer]
      #
      #   @param contact_email [String, nil]
      #
      #   @param data_retention_policy_url [String, nil]
      #
      #   @param documentation_url [String, nil]
      #
      #   @param supported_audio_formats [Array<Symbol, Telnyx::Models::CommunityTtsAudioFormat>]
      #
      #   @param visibility [Symbol, Telnyx::Models::CommunityTtsEngineVisibility] `private`: only your organization can use the engine. `public`: any organization
      #
      #   @param voices_api_key_ref [String, nil]
      #
      #   @param voices_url [String] See the create request.
      #
      #   @param websocket_url [String] See the create request.
    end
  end
end
