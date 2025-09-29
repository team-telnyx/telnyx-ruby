# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class VerificationCodeVerifyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::VerificationCodeVerifyParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PortingOrders::VerificationCodeVerifyParams::VerificationCode
              ]
            )
          )
        end
        attr_reader :verification_codes

        sig do
          params(
            verification_codes:
              T::Array[
                Telnyx::PortingOrders::VerificationCodeVerifyParams::VerificationCode::OrHash
              ]
          ).void
        end
        attr_writer :verification_codes

        sig do
          params(
            verification_codes:
              T::Array[
                Telnyx::PortingOrders::VerificationCodeVerifyParams::VerificationCode::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(verification_codes: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              verification_codes:
                T::Array[
                  Telnyx::PortingOrders::VerificationCodeVerifyParams::VerificationCode
                ],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class VerificationCode < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::VerificationCodeVerifyParams::VerificationCode,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig do
            params(code: String, phone_number: String).returns(T.attached_class)
          end
          def self.new(code: nil, phone_number: nil)
          end

          sig { override.returns({ code: String, phone_number: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
