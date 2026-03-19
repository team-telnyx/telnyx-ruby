# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        # @see Telnyx::Resources::Whatsapp::BusinessAccounts::PhoneNumbers#create_verification
        class PhoneNumberCreateVerificationParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #
          #   @return [String]
          required :display_name, String

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute language
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute verification_method
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberCreateVerificationParams::VerificationMethod, nil]
          optional :verification_method,
                   enum: -> { Telnyx::Whatsapp::BusinessAccounts::PhoneNumberCreateVerificationParams::VerificationMethod }

          # @!method initialize(id:, display_name:, phone_number:, language: nil, verification_method: nil, request_options: {})
          #   @param id [String]
          #   @param display_name [String]
          #   @param phone_number [String]
          #   @param language [String]
          #   @param verification_method [Symbol, Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberCreateVerificationParams::VerificationMethod]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          module VerificationMethod
            extend Telnyx::Internal::Type::Enum

            SMS = :sms
            VOICE = :voice

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
