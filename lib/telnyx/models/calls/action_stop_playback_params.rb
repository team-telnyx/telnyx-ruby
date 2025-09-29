# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#stop_playback
      class ActionStopPlaybackParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute overlay
        #   When enabled, it stops the audio being played in the overlay queue.
        #
        #   @return [Boolean, nil]
        optional :overlay, Telnyx::Internal::Type::Boolean

        # @!attribute stop
        #   Use `current` to stop the current audio being played. Use `all` to stop the
        #   current audio file being played and clear all audio files from the queue.
        #
        #   @return [String, nil]
        optional :stop, String

        # @!method initialize(client_state: nil, command_id: nil, overlay: nil, stop: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStopPlaybackParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param overlay [Boolean] When enabled, it stops the audio being played in the overlay queue.
        #
        #   @param stop [String] Use `current` to stop the current audio being played. Use `all` to stop the curr
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
