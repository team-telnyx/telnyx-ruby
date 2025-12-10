# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::LoaConfigurations#list
      class PortingLoaConfiguration < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the LOA configuration.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute address
        #   The address of the company.
        #
        #   @return [Telnyx::Models::Porting::PortingLoaConfiguration::Address, nil]
        optional :address, -> { Telnyx::Porting::PortingLoaConfiguration::Address }

        # @!attribute company_name
        #   The name of the company
        #
        #   @return [String, nil]
        optional :company_name, String

        # @!attribute contact
        #   The contact information of the company.
        #
        #   @return [Telnyx::Models::Porting::PortingLoaConfiguration::Contact, nil]
        optional :contact, -> { Telnyx::Porting::PortingLoaConfiguration::Contact }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute logo
        #   The logo to be used in the LOA.
        #
        #   @return [Telnyx::Models::Porting::PortingLoaConfiguration::Logo, nil]
        optional :logo, -> { Telnyx::Porting::PortingLoaConfiguration::Logo }

        # @!attribute name
        #   The name of the LOA configuration
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute organization_id
        #   The organization that owns the LOA configuration
        #
        #   @return [String, nil]
        optional :organization_id, String

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(id: nil, address: nil, company_name: nil, contact: nil, created_at: nil, logo: nil, name: nil, organization_id: nil, record_type: nil, updated_at: nil)
        #   @param id [String] Uniquely identifies the LOA configuration.
        #
        #   @param address [Telnyx::Models::Porting::PortingLoaConfiguration::Address] The address of the company.
        #
        #   @param company_name [String] The name of the company
        #
        #   @param contact [Telnyx::Models::Porting::PortingLoaConfiguration::Contact] The contact information of the company.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param logo [Telnyx::Models::Porting::PortingLoaConfiguration::Logo] The logo to be used in the LOA.
        #
        #   @param name [String] The name of the LOA configuration
        #
        #   @param organization_id [String] The organization that owns the LOA configuration
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

        # @see Telnyx::Models::Porting::PortingLoaConfiguration#address
        class Address < Telnyx::Internal::Type::BaseModel
          # @!attribute city
          #   The locality of the company
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute country_code
          #   The country code of the company
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute extended_address
          #   The extended address of the company
          #
          #   @return [String, nil]
          optional :extended_address, String

          # @!attribute state
          #   The administrative area of the company
          #
          #   @return [String, nil]
          optional :state, String

          # @!attribute street_address
          #   The street address of the company
          #
          #   @return [String, nil]
          optional :street_address, String

          # @!attribute zip_code
          #   The postal code of the company
          #
          #   @return [String, nil]
          optional :zip_code, String

          # @!method initialize(city: nil, country_code: nil, extended_address: nil, state: nil, street_address: nil, zip_code: nil)
          #   The address of the company.
          #
          #   @param city [String] The locality of the company
          #
          #   @param country_code [String] The country code of the company
          #
          #   @param extended_address [String] The extended address of the company
          #
          #   @param state [String] The administrative area of the company
          #
          #   @param street_address [String] The street address of the company
          #
          #   @param zip_code [String] The postal code of the company
        end

        # @see Telnyx::Models::Porting::PortingLoaConfiguration#contact
        class Contact < Telnyx::Internal::Type::BaseModel
          # @!attribute email
          #   The email address of the contact
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute phone_number
          #   The phone number of the contact
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(email: nil, phone_number: nil)
          #   The contact information of the company.
          #
          #   @param email [String] The email address of the contact
          #
          #   @param phone_number [String] The phone number of the contact
        end

        # @see Telnyx::Models::Porting::PortingLoaConfiguration#logo
        class Logo < Telnyx::Internal::Type::BaseModel
          # @!attribute content_type
          #   The content type of the logo.
          #
          #   @return [Symbol, Telnyx::Models::Porting::PortingLoaConfiguration::Logo::ContentType, nil]
          optional :content_type, enum: -> { Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType }

          # @!attribute document_id
          #   Identifies the document that contains the logo.
          #
          #   @return [String, nil]
          optional :document_id, String

          # @!method initialize(content_type: nil, document_id: nil)
          #   The logo to be used in the LOA.
          #
          #   @param content_type [Symbol, Telnyx::Models::Porting::PortingLoaConfiguration::Logo::ContentType] The content type of the logo.
          #
          #   @param document_id [String] Identifies the document that contains the logo.

          # The content type of the logo.
          #
          # @see Telnyx::Models::Porting::PortingLoaConfiguration::Logo#content_type
          module ContentType
            extend Telnyx::Internal::Type::Enum

            IMAGE_PNG = :"image/png"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end

    PortingLoaConfiguration = Porting::PortingLoaConfiguration
  end
end
