# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionSendDtmfParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionSendDtmfParams,
              Telnyx::Internal::AnyHash
            )
          end

        # DTMF digits to send. Valid characters: 0-9, A-D, \*, #, w (0.5s pause), W (1s
        # pause).
        sig { returns(String) }
        attr_accessor :digits

        # Array of participant call control IDs to send DTMF to. When empty, DTMF will be
        # sent to all participants.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        # Use this field to add state to every subsequent webhook. Must be a valid Base-64
        # encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Duration of each DTMF digit in milliseconds.
        sig { returns(T.nilable(Integer)) }
        attr_reader :duration_millis

        sig { params(duration_millis: Integer).void }
        attr_writer :duration_millis

        sig do
          params(
            digits: String,
            call_control_ids: T::Array[String],
            client_state: String,
            duration_millis: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # DTMF digits to send. Valid characters: 0-9, A-D, \*, #, w (0.5s pause), W (1s
          # pause).
          digits:,
          # Array of participant call control IDs to send DTMF to. When empty, DTMF will be
          # sent to all participants.
          call_control_ids: nil,
          # Use this field to add state to every subsequent webhook. Must be a valid Base-64
          # encoded string.
          client_state: nil,
          # Duration of each DTMF digit in milliseconds.
          duration_millis: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              digits: String,
              call_control_ids: T::Array[String],
              client_state: String,
              duration_millis: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
