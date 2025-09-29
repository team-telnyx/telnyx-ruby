# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrderCreateVerificationCodesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[String]) }
      attr_accessor :phone_numbers

      sig do
        returns(
          Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::OrSymbol
        )
      end
      attr_accessor :verification_method

      sig do
        params(
          phone_numbers: T::Array[String],
          verification_method:
            Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(phone_numbers:, verification_method:, request_options: {})
      end

      sig do
        override.returns(
          {
            phone_numbers: T::Array[String],
            verification_method:
              Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::OrSymbol,
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
              Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :sms,
            Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::TaggedSymbol
          )
        CALL =
          T.let(
            :call,
            Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::TaggedSymbol
          )
        FLASHCALL =
          T.let(
            :flashcall,
            Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MessagingHostedNumberOrderCreateVerificationCodesParams::VerificationMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
