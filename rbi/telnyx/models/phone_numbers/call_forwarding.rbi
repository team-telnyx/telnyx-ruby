# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class CallForwarding < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::CallForwarding,
              Telnyx::Internal::AnyHash
            )
          end

        # Indicates if call forwarding will be enabled for this number if forwards_to and
        # forwarding_type are filled in. Defaults to true for backwards compatibility with
        # APIV1 use of numbers endpoints.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :call_forwarding_enabled

        sig { params(call_forwarding_enabled: T::Boolean).void }
        attr_writer :call_forwarding_enabled

        # Call forwarding type. 'forwards_to' must be set for this to have an effect.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::CallForwarding::ForwardingType::OrSymbol
            )
          )
        end
        attr_reader :forwarding_type

        sig do
          params(
            forwarding_type:
              Telnyx::PhoneNumbers::CallForwarding::ForwardingType::OrSymbol
          ).void
        end
        attr_writer :forwarding_type

        # The phone number to which inbound calls to this number are forwarded. Inbound
        # calls will not be forwarded if this field is left blank. If set, must be a
        # +E.164-formatted phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :forwards_to

        sig { params(forwards_to: String).void }
        attr_writer :forwards_to

        # The call forwarding settings for a phone number.
        sig do
          params(
            call_forwarding_enabled: T::Boolean,
            forwarding_type:
              Telnyx::PhoneNumbers::CallForwarding::ForwardingType::OrSymbol,
            forwards_to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates if call forwarding will be enabled for this number if forwards_to and
          # forwarding_type are filled in. Defaults to true for backwards compatibility with
          # APIV1 use of numbers endpoints.
          call_forwarding_enabled: nil,
          # Call forwarding type. 'forwards_to' must be set for this to have an effect.
          forwarding_type: nil,
          # The phone number to which inbound calls to this number are forwarded. Inbound
          # calls will not be forwarded if this field is left blank. If set, must be a
          # +E.164-formatted phone number.
          forwards_to: nil
        )
        end

        sig do
          override.returns(
            {
              call_forwarding_enabled: T::Boolean,
              forwarding_type:
                Telnyx::PhoneNumbers::CallForwarding::ForwardingType::OrSymbol,
              forwards_to: String
            }
          )
        end
        def to_hash
        end

        # Call forwarding type. 'forwards_to' must be set for this to have an effect.
        module ForwardingType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::CallForwarding::ForwardingType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALWAYS =
            T.let(
              :always,
              Telnyx::PhoneNumbers::CallForwarding::ForwardingType::TaggedSymbol
            )
          ON_FAILURE =
            T.let(
              :"on-failure",
              Telnyx::PhoneNumbers::CallForwarding::ForwardingType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::CallForwarding::ForwardingType::TaggedSymbol
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
