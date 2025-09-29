# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class VerificationCodeSendParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::VerificationCodeSendParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :phone_numbers

        sig { params(phone_numbers: T::Array[String]).void }
        attr_writer :phone_numbers

        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::OrSymbol
            )
          )
        end
        attr_reader :verification_method

        sig do
          params(
            verification_method:
              Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::OrSymbol
          ).void
        end
        attr_writer :verification_method

        sig do
          params(
            phone_numbers: T::Array[String],
            verification_method:
              Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          phone_numbers: nil,
          verification_method: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              phone_numbers: T::Array[String],
              verification_method:
                Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module VerificationMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::TaggedSymbol
            )
          CALL =
            T.let(
              :call,
              Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrders::VerificationCodeSendParams::VerificationMethod::TaggedSymbol
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
