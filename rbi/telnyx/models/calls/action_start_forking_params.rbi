# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartForkingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartForkingParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # The network target, <udp:ip_address:port>, where the call's incoming RTP media
        # packets should be forwarded.
        sig { returns(T.nilable(String)) }
        attr_reader :rx

        sig { params(rx: String).void }
        attr_writer :rx

        # Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
        # decrypt incoming SIP media before forking to the target. `rx` and `tx` are
        # required fields if `decrypted` selected.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartForkingParams::StreamType::OrSymbol
            )
          )
        end
        attr_reader :stream_type

        sig do
          params(
            stream_type:
              Telnyx::Calls::ActionStartForkingParams::StreamType::OrSymbol
          ).void
        end
        attr_writer :stream_type

        # The network target, <udp:ip_address:port>, where the call's outgoing RTP media
        # packets should be forwarded.
        sig { returns(T.nilable(String)) }
        attr_reader :tx

        sig { params(tx: String).void }
        attr_writer :tx

        sig do
          params(
            client_state: String,
            command_id: String,
            rx: String,
            stream_type:
              Telnyx::Calls::ActionStartForkingParams::StreamType::OrSymbol,
            tx: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The network target, <udp:ip_address:port>, where the call's incoming RTP media
          # packets should be forwarded.
          rx: nil,
          # Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
          # decrypt incoming SIP media before forking to the target. `rx` and `tx` are
          # required fields if `decrypted` selected.
          stream_type: nil,
          # The network target, <udp:ip_address:port>, where the call's outgoing RTP media
          # packets should be forwarded.
          tx: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              command_id: String,
              rx: String,
              stream_type:
                Telnyx::Calls::ActionStartForkingParams::StreamType::OrSymbol,
              tx: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Optionally specify a media type to stream. If `decrypted` selected, Telnyx will
        # decrypt incoming SIP media before forking to the target. `rx` and `tx` are
        # required fields if `decrypted` selected.
        module StreamType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionStartForkingParams::StreamType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DECRYPTED =
            T.let(
              :decrypted,
              Telnyx::Calls::ActionStartForkingParams::StreamType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartForkingParams::StreamType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
