# typed: strong

module Telnyx
  module Models
    module Verifications
      module ByPhoneNumber
        class VerifyVerificationCodeResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # +E164 formatted phone number.
            sig { returns(String) }
            attr_accessor :phone_number

            # Identifies if the verification code has been accepted or rejected.
            sig do
              returns(
                Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode::TaggedSymbol
              )
            end
            attr_accessor :response_code

            sig do
              params(
                phone_number: String,
                response_code:
                  Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # +E164 formatted phone number.
              phone_number:,
              # Identifies if the verification code has been accepted or rejected.
              response_code:
            )
            end

            sig do
              override.returns(
                {
                  phone_number: String,
                  response_code:
                    Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Identifies if the verification code has been accepted or rejected.
            module ResponseCode
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACCEPTED =
                T.let(
                  :accepted,
                  Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode::TaggedSymbol
                )
              REJECTED =
                T.let(
                  :rejected,
                  Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data::ResponseCode::TaggedSymbol
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
end
