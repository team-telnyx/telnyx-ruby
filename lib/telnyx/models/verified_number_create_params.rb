# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifiedNumbers#create
    class VerifiedNumberCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String

      # @!attribute verification_method
      #   Verification method.
      #
      #   @return [Symbol, Telnyx::Models::VerifiedNumberCreateParams::VerificationMethod]
      required :verification_method, enum: -> { Telnyx::VerifiedNumberCreateParams::VerificationMethod }

      # @!attribute extension
      #   Optional DTMF extension sequence to dial after the call is answered. This
      #   parameter enables verification of phone numbers behind IVR systems that require
      #   extension dialing. Valid characters: digits 0-9, letters A-D, symbols \* and #.
      #   Pauses: w = 0.5 second pause, W = 1 second pause. Maximum length: 50 characters.
      #   Only works with 'call' verification method.
      #
      #   @return [String, nil]
      optional :extension, String

      # @!method initialize(phone_number:, verification_method:, extension: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VerifiedNumberCreateParams} for more details.
      #
      #   @param phone_number [String]
      #
      #   @param verification_method [Symbol, Telnyx::Models::VerifiedNumberCreateParams::VerificationMethod] Verification method.
      #
      #   @param extension [String] Optional DTMF extension sequence to dial after the call is answered. This parame
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Verification method.
      module VerificationMethod
        extend Telnyx::Internal::Type::Enum

        SMS = :sms
        CALL = :call

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
