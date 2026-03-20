# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        class PhoneNumberInitializeVerificationParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :display_name

          sig { returns(String) }
          attr_accessor :phone_number

          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

          sig do
            returns(
              T.nilable(
                Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::OrSymbol
              )
            )
          end
          attr_reader :verification_method

          sig do
            params(
              verification_method:
                Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::OrSymbol
            ).void
          end
          attr_writer :verification_method

          sig do
            params(
              id: String,
              display_name: String,
              phone_number: String,
              language: String,
              verification_method:
                Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            display_name:,
            phone_number:,
            language: nil,
            verification_method: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                display_name: String,
                phone_number: String,
                language: String,
                verification_method:
                  Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::OrSymbol,
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
                  Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SMS =
              T.let(
                :sms,
                Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::TaggedSymbol
              )
            VOICE =
              T.let(
                :voice,
                Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::TaggedSymbol
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
end
