# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionHangupParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionHangupParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :call_control_id

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

        # Custom headers to be added to the SIP BYE message.
        sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
        attr_reader :custom_headers

        sig do
          params(custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]).void
        end
        attr_writer :custom_headers

        # Text for the SIP `Reason` header (RFC 3326) sent when cancelling an unanswered
        # outbound leg. The SIP CANCEL carries `Reason: SIP;cause=200;text="<reason>"`;
        # phones such as Poly and Yealink use it to suppress the missed-call entry for a
        # call answered elsewhere. Has no effect on an answered leg or an inbound leg. A
        # hangup sent before the leg's `call.initiated` webhook still hangs up the leg,
        # but without the `Reason` header. Must not contain `"`, `\`, control characters,
        # or characters outside the Basic Multilingual Plane (such as emoji); invalid
        # values are rejected with a 422.
        sig { returns(T.nilable(String)) }
        attr_reader :reason

        sig { params(reason: String).void }
        attr_writer :reason

        sig do
          params(
            call_control_id: String,
            client_state: String,
            command_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            reason: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          call_control_id:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Custom headers to be added to the SIP BYE message.
          custom_headers: nil,
          # Text for the SIP `Reason` header (RFC 3326) sent when cancelling an unanswered
          # outbound leg. The SIP CANCEL carries `Reason: SIP;cause=200;text="<reason>"`;
          # phones such as Poly and Yealink use it to suppress the missed-call entry for a
          # call answered elsewhere. Has no effect on an answered leg or an inbound leg. A
          # hangup sent before the leg's `call.initiated` webhook still hangs up the leg,
          # but without the `Reason` header. Must not contain `"`, `\`, control characters,
          # or characters outside the Basic Multilingual Plane (such as emoji); invalid
          # values are rejected with a 422.
          reason: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              client_state: String,
              command_id: String,
              custom_headers: T::Array[Telnyx::CustomSipHeader],
              reason: String,
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
