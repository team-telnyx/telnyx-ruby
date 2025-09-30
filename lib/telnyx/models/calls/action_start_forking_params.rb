# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_forking
      class ActionStartForkingParams < Telnyx::Internal::Type::BaseModel
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

        # @!attribute rx
        #   The network target, <udp:ip_address:port>, where the call's incoming RTP media
        #   packets should be forwarded.
        #
        #   @return [String, nil]
        optional :rx, String

        # @!attribute stream_type
        #   Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
        #   decrypt incoming SIP media before forking to the target. `rx` and `tx` are
        #   required fields if `decrypted` selected.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartForkingParams::StreamType, nil]
        optional :stream_type, enum: -> { Telnyx::Calls::ActionStartForkingParams::StreamType }

        # @!attribute tx
        #   The network target, <udp:ip_address:port>, where the call's outgoing RTP media
        #   packets should be forwarded.
        #
        #   @return [String, nil]
        optional :tx, String

        # @!method initialize(client_state: nil, command_id: nil, rx: nil, stream_type: nil, tx: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartForkingParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param rx [String] The network target, <udp:ip_address:port>, where the call's incoming RTP media p
        #
        #   @param stream_type [Symbol, Telnyx::Models::Calls::ActionStartForkingParams::StreamType] Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
        #
        #   @param tx [String] The network target, <udp:ip_address:port>, where the call's outgoing RTP media p
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
        # decrypt incoming SIP media before forking to the target. `rx` and `tx` are
        # required fields if `decrypted` selected.
        module StreamType
          extend Telnyx::Internal::Type::Enum

          DECRYPTED = :decrypted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
