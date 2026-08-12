# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Brands#update
      class BrandUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute addresses
        #
        #   @return [Hash{Symbol=>Telnyx::Models::Rcs::BrandUpdateParams::Address}, nil]
        optional :addresses, -> { Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandUpdateParams::Address] }

        # @!attribute contacts
        #   Named business contacts. Use the `brand` key for the required BRAND contact.
        #
        #   @return [Telnyx::Models::Rcs::BrandUpdateParams::Contacts, nil]
        optional :contacts, -> { Telnyx::Rcs::BrandUpdateParams::Contacts }

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute identifiers
        #   Named business identifiers. Use the `ein` key for the required EIN and
        #   `stock_symbol` for a public-profit brand's stock symbol.
        #
        #   @return [Telnyx::Models::Rcs::BrandUpdateParams::Identifiers, nil]
        optional :identifiers, -> { Telnyx::Rcs::BrandUpdateParams::Identifiers }

        # @!attribute legal_entity_type
        #
        #   @return [Symbol, Telnyx::Models::Rcs::BrandLegalEntityType, nil]
        optional :legal_entity_type, enum: -> { Telnyx::Rcs::BrandLegalEntityType }

        # @!attribute legal_name
        #
        #   @return [String, nil]
        optional :legal_name, String

        # @!attribute organization_type
        #
        #   @return [Symbol, Telnyx::Models::Rcs::BrandOrganizationType, nil]
        optional :organization_type, enum: -> { Telnyx::Rcs::BrandOrganizationType }

        # @!attribute profile_id
        #
        #   @return [String, nil]
        optional :profile_id, String

        # @!attribute website_url
        #
        #   @return [String, nil]
        optional :website_url, String

        # @!method initialize(id:, addresses: nil, contacts: nil, display_name: nil, identifiers: nil, legal_entity_type: nil, legal_name: nil, organization_type: nil, profile_id: nil, website_url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rcs::BrandUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param addresses [Hash{Symbol=>Telnyx::Models::Rcs::BrandUpdateParams::Address}]
        #
        #   @param contacts [Telnyx::Models::Rcs::BrandUpdateParams::Contacts] Named business contacts. Use the `brand` key for the required BRAND contact.
        #
        #   @param display_name [String]
        #
        #   @param identifiers [Telnyx::Models::Rcs::BrandUpdateParams::Identifiers] Named business identifiers. Use the `ein` key for the required EIN and `stock_sy
        #
        #   @param legal_entity_type [Symbol, Telnyx::Models::Rcs::BrandLegalEntityType]
        #
        #   @param legal_name [String]
        #
        #   @param organization_type [Symbol, Telnyx::Models::Rcs::BrandOrganizationType]
        #
        #   @param profile_id [String]
        #
        #   @param website_url [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Address < Telnyx::Internal::Type::BaseModel
          # @!attribute administrative_area
          #
          #   @return [String]
          required :administrative_area, String

          # @!attribute city
          #
          #   @return [String]
          required :city, String

          # @!attribute country_code
          #   The two-letter ISO 3166-1 country code.
          #
          #   @return [String]
          required :country_code, String

          # @!attribute line_1
          #
          #   @return [String]
          required :line_1, String

          # @!attribute postal_code
          #
          #   @return [String]
          required :postal_code, String

          # @!attribute line_2
          #
          #   @return [String, nil]
          optional :line_2, String, nil?: true

          # @!method initialize(administrative_area:, city:, country_code:, line_1:, postal_code:, line_2: nil)
          #   @param administrative_area [String]
          #
          #   @param city [String]
          #
          #   @param country_code [String] The two-letter ISO 3166-1 country code.
          #
          #   @param line_1 [String]
          #
          #   @param postal_code [String]
          #
          #   @param line_2 [String, nil]
        end

        class Contacts < Telnyx::Internal::Type::BaseModel
          # @!attribute brand
          #
          #   @return [Telnyx::Models::Rcs::BrandUpdateParams::Contacts::Brand]
          required :brand, -> { Telnyx::Rcs::BrandUpdateParams::Contacts::Brand }

          # @!method initialize(brand:)
          #   Named business contacts. Use the `brand` key for the required BRAND contact.
          #
          #   @param brand [Telnyx::Models::Rcs::BrandUpdateParams::Contacts::Brand]

          # @see Telnyx::Models::Rcs::BrandUpdateParams::Contacts#brand
          class Brand < Telnyx::Models::Rcs::BrandContact
            # @!attribute contact_type
            #
            #   @return [Symbol, Telnyx::Models::Rcs::BrandUpdateParams::Contacts::Brand::ContactType, nil]
            optional :contact_type, enum: -> { Telnyx::Rcs::BrandUpdateParams::Contacts::Brand::ContactType }

            # @!method initialize(contact_type: nil)
            #   @param contact_type [Symbol, Telnyx::Models::Rcs::BrandUpdateParams::Contacts::Brand::ContactType]

            module ContactType
              extend Telnyx::Internal::Type::Enum

              BRAND = :BRAND

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Identifiers < Telnyx::Internal::Type::BaseModel
          # @!attribute ein
          #
          #   @return [Telnyx::Models::Rcs::EinBrandIdentifier]
          required :ein, -> { Telnyx::Rcs::EinBrandIdentifier }

          # @!attribute stock_symbol
          #
          #   @return [Telnyx::Models::Rcs::StockSymbolBrandIdentifier, nil]
          optional :stock_symbol, -> { Telnyx::Rcs::StockSymbolBrandIdentifier }

          # @!method initialize(ein:, stock_symbol: nil)
          #   Named business identifiers. Use the `ein` key for the required EIN and
          #   `stock_symbol` for a public-profit brand's stock symbol.
          #
          #   @param ein [Telnyx::Models::Rcs::EinBrandIdentifier]
          #   @param stock_symbol [Telnyx::Models::Rcs::StockSymbolBrandIdentifier]
        end
      end
    end
  end
end
