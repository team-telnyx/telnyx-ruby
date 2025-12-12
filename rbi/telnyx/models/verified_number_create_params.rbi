# typed: strong

module Telnyx
  module Models
    class VerifiedNumberCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifiedNumberCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :phone_number

      # Verification method.
      sig do
        returns(
          Telnyx::VerifiedNumberCreateParams::VerificationMethod::OrSymbol
        )
      end
      attr_accessor :verification_method

      # Optional DTMF extension sequence to dial after the call is answered. This
      # parameter enables verification of phone numbers behind IVR systems that require
      # extension dialing. Valid characters: digits 0-9, letters A-D, symbols \* and #.
      # Pauses: w = 0.5 second pause, W = 1 second pause. Maximum length: 50 characters.
      # Only works with 'call' verification method.
      sig { returns(T.nilable(String)) }
      attr_reader :extension

      sig { params(extension: String).void }
      attr_writer :extension

      sig do
        params(
          phone_number: String,
          verification_method:
            Telnyx::VerifiedNumberCreateParams::VerificationMethod::OrSymbol,
          extension: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        phone_number:,
        # Verification method.
        verification_method:,
        # Optional DTMF extension sequence to dial after the call is answered. This
        # parameter enables verification of phone numbers behind IVR systems that require
        # extension dialing. Valid characters: digits 0-9, letters A-D, symbols \* and #.
        # Pauses: w = 0.5 second pause, W = 1 second pause. Maximum length: 50 characters.
        # Only works with 'call' verification method.
        extension: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            phone_number: String,
            verification_method:
              Telnyx::VerifiedNumberCreateParams::VerificationMethod::OrSymbol,
            extension: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Verification method.
      module VerificationMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::VerifiedNumberCreateParams::VerificationMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :sms,
            Telnyx::VerifiedNumberCreateParams::VerificationMethod::TaggedSymbol
          )
        CALL =
          T.let(
            :call,
            Telnyx::VerifiedNumberCreateParams::VerificationMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::VerifiedNumberCreateParams::VerificationMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
