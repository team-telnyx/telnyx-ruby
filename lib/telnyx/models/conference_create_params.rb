# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#create
    class ConferenceCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute call_control_id
      #   Unique identifier and token for controlling the call
      #
      #   @return [String]
      required :call_control_id, String

      # @!attribute name
      #   Name of the conference
      #
      #   @return [String]
      required :name, String

      # @!attribute beep_enabled
      #   Whether a beep sound should be played when participants join and/or leave the
      #   conference.
      #
      #   @return [Symbol, Telnyx::Models::ConferenceCreateParams::BeepEnabled, nil]
      optional :beep_enabled, enum: -> { Telnyx::ConferenceCreateParams::BeepEnabled }

      # @!attribute client_state
      #   Use this field to add state to every subsequent webhook. It must be a valid
      #   Base-64 encoded string. The client_state will be updated for the creator call
      #   leg and will be used for all webhooks related to the created conference.
      #
      #   @return [String, nil]
      optional :client_state, String

      # @!attribute comfort_noise
      #   Toggle background comfort noise.
      #
      #   @return [Boolean, nil]
      optional :comfort_noise, Telnyx::Internal::Type::Boolean

      # @!attribute command_id
      #   Use this field to avoid execution of duplicate commands. Telnyx will ignore
      #   subsequent commands with the same `command_id` as one that has already been
      #   executed.
      #
      #   @return [String, nil]
      optional :command_id, String

      # @!attribute duration_minutes
      #   Time length (minutes) after which the conference will end.
      #
      #   @return [Integer, nil]
      optional :duration_minutes, Integer

      # @!attribute hold_audio_url
      #   The URL of a file to be played to participants joining the conference. The URL
      #   can point to either a WAV or MP3 file. hold_media_name and hold_audio_url cannot
      #   be used together in one request. Takes effect only when
      #   "start_conference_on_create" is set to "false".
      #
      #   @return [String, nil]
      optional :hold_audio_url, String

      # @!attribute hold_media_name
      #   The media_name of a file to be played to participants joining the conference.
      #   The media_name must point to a file previously uploaded to
      #   api.telnyx.com/v2/media by the same user/organization. The file must either be a
      #   WAV or MP3 file. Takes effect only when "start_conference_on_create" is set to
      #   "false".
      #
      #   @return [String, nil]
      optional :hold_media_name, String

      # @!attribute max_participants
      #   The maximum number of active conference participants to allow. Must be between 2
      #   and 800. Defaults to 250
      #
      #   @return [Integer, nil]
      optional :max_participants, Integer

      # @!attribute start_conference_on_create
      #   Whether the conference should be started on creation. If the conference isn't
      #   started all participants that join are automatically put on hold. Defaults to
      #   "true".
      #
      #   @return [Boolean, nil]
      optional :start_conference_on_create, Telnyx::Internal::Type::Boolean

      # @!method initialize(call_control_id:, name:, beep_enabled: nil, client_state: nil, comfort_noise: nil, command_id: nil, duration_minutes: nil, hold_audio_url: nil, hold_media_name: nil, max_participants: nil, start_conference_on_create: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConferenceCreateParams} for more details.
      #
      #   @param call_control_id [String] Unique identifier and token for controlling the call
      #
      #   @param name [String] Name of the conference
      #
      #   @param beep_enabled [Symbol, Telnyx::Models::ConferenceCreateParams::BeepEnabled] Whether a beep sound should be played when participants join and/or leave the co
      #
      #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
      #
      #   @param comfort_noise [Boolean] Toggle background comfort noise.
      #
      #   @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
      #
      #   @param duration_minutes [Integer] Time length (minutes) after which the conference will end.
      #
      #   @param hold_audio_url [String] The URL of a file to be played to participants joining the conference. The URL c
      #
      #   @param hold_media_name [String] The media_name of a file to be played to participants joining the conference. Th
      #
      #   @param max_participants [Integer] The maximum number of active conference participants to allow. Must be between 2
      #
      #   @param start_conference_on_create [Boolean] Whether the conference should be started on creation. If the conference isn't st
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Whether a beep sound should be played when participants join and/or leave the
      # conference.
      module BeepEnabled
        extend Telnyx::Internal::Type::Enum

        ALWAYS = :always
        NEVER = :never
        ON_ENTER = :on_enter
        ON_EXIT = :on_exit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
