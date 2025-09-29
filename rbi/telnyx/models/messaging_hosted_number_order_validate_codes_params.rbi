# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrderValidateCodesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MessagingHostedNumberOrderValidateCodesParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Telnyx::MessagingHostedNumberOrderValidateCodesParams::VerificationCode
          ]
        )
      end
      attr_accessor :verification_codes

      sig do
        params(
          verification_codes:
            T::Array[
              Telnyx::MessagingHostedNumberOrderValidateCodesParams::VerificationCode::OrHash
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(verification_codes:, request_options: {})
      end

      sig do
        override.returns(
          {
            verification_codes:
              T::Array[
                Telnyx::MessagingHostedNumberOrderValidateCodesParams::VerificationCode
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
              Telnyx::MessagingHostedNumberOrderValidateCodesParams::VerificationCode,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          params(code: String, phone_number: String).returns(T.attached_class)
        end
        def self.new(code:, phone_number:)
        end

        sig { override.returns({ code: String, phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
