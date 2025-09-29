# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::LoaConfigurations#preview_0
      class LoaConfigurationPreview0Params < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute address
        #   The address of the company.
        #
        #   @return [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Address]
        required :address, -> { Telnyx::Porting::LoaConfigurationPreview0Params::Address }

        # @!attribute company_name
        #   The name of the company
        #
        #   @return [String]
        required :company_name, String

        # @!attribute contact
        #   The contact information of the company.
        #
        #   @return [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Contact]
        required :contact, -> { Telnyx::Porting::LoaConfigurationPreview0Params::Contact }

        # @!attribute logo
        #   The logo of the LOA configuration
        #
        #   @return [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Logo]
        required :logo, -> { Telnyx::Porting::LoaConfigurationPreview0Params::Logo }

        # @!attribute name
        #   The name of the LOA configuration
        #
        #   @return [String]
        required :name, String

        # @!method initialize(address:, company_name:, contact:, logo:, name:, request_options: {})
        #   @param address [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Address] The address of the company.
        #
        #   @param company_name [String] The name of the company
        #
        #   @param contact [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Contact] The contact information of the company.
        #
        #   @param logo [Telnyx::Models::Porting::LoaConfigurationPreview0Params::Logo] The logo of the LOA configuration
        #
        #   @param name [String] The name of the LOA configuration
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Address < Telnyx::Internal::Type::BaseModel
          # @!attribute city
          #   The locality of the company
          #
          #   @return [String]
          required :city, String

          # @!attribute country_code
          #   The country code of the company
          #
          #   @return [String]
          required :country_code, String

          # @!attribute state
          #   The administrative area of the company
          #
          #   @return [String]
          required :state, String

          # @!attribute street_address
          #   The street address of the company
          #
          #   @return [String]
          required :street_address, String

          # @!attribute zip_code
          #   The postal code of the company
          #
          #   @return [String]
          required :zip_code, String

          # @!attribute extended_address
          #   The extended address of the company
          #
          #   @return [String, nil]
          optional :extended_address, String

          # @!method initialize(city:, country_code:, state:, street_address:, zip_code:, extended_address: nil)
          #   The address of the company.
          #
          #   @param city [String] The locality of the company
          #
          #   @param country_code [String] The country code of the company
          #
          #   @param state [String] The administrative area of the company
          #
          #   @param street_address [String] The street address of the company
          #
          #   @param zip_code [String] The postal code of the company
          #
          #   @param extended_address [String] The extended address of the company
        end

        class Contact < Telnyx::Internal::Type::BaseModel
          # @!attribute email
          #   The email address of the contact
          #
          #   @return [String]
          required :email, String

          # @!attribute phone_number
          #   The phone number of the contact
          #
          #   @return [String]
          required :phone_number, String

          # @!method initialize(email:, phone_number:)
          #   The contact information of the company.
          #
          #   @param email [String] The email address of the contact
          #
          #   @param phone_number [String] The phone number of the contact
        end

        class Logo < Telnyx::Internal::Type::BaseModel
          # @!attribute document_id
          #   The document identification
          #
          #   @return [String]
          required :document_id, String

          # @!method initialize(document_id:)
          #   The logo of the LOA configuration
          #
          #   @param document_id [String] The document identification
        end
      end
    end
  end
end
