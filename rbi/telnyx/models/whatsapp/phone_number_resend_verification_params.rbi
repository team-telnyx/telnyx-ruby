# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class PhoneNumberResendVerificationParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::PhoneNumberResendVerificationParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          returns(
            T.nilable(
              Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::OrSymbol
            )
          )
        end
        attr_reader :verification_method

        sig do
          params(
            verification_method:
              Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::OrSymbol
          ).void
        end
        attr_writer :verification_method

        sig do
          params(
            phone_number: String,
            verification_method:
              Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          phone_number:,
          verification_method: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              verification_method:
                Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::OrSymbol,
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
                Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::TaggedSymbol
            )
          VOICE =
            T.let(
              :voice,
              Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::TaggedSymbol
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
