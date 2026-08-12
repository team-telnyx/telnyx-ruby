# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Brands#create
      class BrandCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute addresses
        #
        #   @return [Hash{Symbol=>Telnyx::Models::Rcs::BrandCreateParams::Address}]
        required :addresses, -> { Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandCreateParams::Address] }

        # @!attribute contacts
        #   Named business contacts. Use the `brand` key for the required BRAND contact.
        #
        #   @return [Telnyx::Models::Rcs::BrandCreateParams::Contacts]
        required :contacts, -> { Telnyx::Rcs::BrandCreateParams::Contacts }

        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String

        # @!attribute identifiers
        #   Named business identifiers. Use the `ein` key for the required EIN and
        #   `stock_symbol` for a public-profit brand's stock symbol.
        #
        #   @return [Telnyx::Models::Rcs::BrandCreateParams::Identifiers]
        required :identifiers, -> { Telnyx::Rcs::BrandCreateParams::Identifiers }

        # @!attribute legal_entity_type
        #
        #   @return [Symbol, Telnyx::Models::Rcs::BrandLegalEntityType]
        required :legal_entity_type, enum: -> { Telnyx::Rcs::BrandLegalEntityType }

        # @!attribute legal_name
        #
        #   @return [String]
        required :legal_name, String

        # @!attribute organization_type
        #
        #   @return [Symbol, Telnyx::Models::Rcs::BrandOrganizationType]
        required :organization_type, enum: -> { Telnyx::Rcs::BrandOrganizationType }

        # @!attribute website_url
        #
        #   @return [String]
        required :website_url, String

        # @!attribute profile_id
        #   A Messaging Profile owned by the authenticated organization. Agents inherit this
        #   value when they do not provide their own profile.
        #
        #   @return [String, nil]
        optional :profile_id, String, nil?: true

        # @!method initialize(addresses:, contacts:, display_name:, identifiers:, legal_entity_type:, legal_name:, organization_type:, website_url:, profile_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rcs::BrandCreateParams} for more details.
        #
        #   @param addresses [Hash{Symbol=>Telnyx::Models::Rcs::BrandCreateParams::Address}]
        #
        #   @param contacts [Telnyx::Models::Rcs::BrandCreateParams::Contacts] Named business contacts. Use the `brand` key for the required BRAND contact.
        #
        #   @param display_name [String]
        #
        #   @param identifiers [Telnyx::Models::Rcs::BrandCreateParams::Identifiers] Named business identifiers. Use the `ein` key for the required EIN and `stock_sy
        #
        #   @param legal_entity_type [Symbol, Telnyx::Models::Rcs::BrandLegalEntityType]
        #
        #   @param legal_name [String]
        #
        #   @param organization_type [Symbol, Telnyx::Models::Rcs::BrandOrganizationType]
        #
        #   @param website_url [String]
        #
        #   @param profile_id [String, nil] A Messaging Profile owned by the authenticated organization. Agents inherit this
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
          #   @return [Telnyx::Models::Rcs::BrandCreateParams::Contacts::Brand]
          required :brand, -> { Telnyx::Rcs::BrandCreateParams::Contacts::Brand }

          # @!method initialize(brand:)
          #   Named business contacts. Use the `brand` key for the required BRAND contact.
          #
          #   @param brand [Telnyx::Models::Rcs::BrandCreateParams::Contacts::Brand]

          # @see Telnyx::Models::Rcs::BrandCreateParams::Contacts#brand
          class Brand < Telnyx::Models::Rcs::BrandContact
            # @!attribute contact_type
            #
            #   @return [Symbol, Telnyx::Models::Rcs::BrandCreateParams::Contacts::Brand::ContactType, nil]
            optional :contact_type, enum: -> { Telnyx::Rcs::BrandCreateParams::Contacts::Brand::ContactType }

            # @!method initialize(contact_type: nil)
            #   @param contact_type [Symbol, Telnyx::Models::Rcs::BrandCreateParams::Contacts::Brand::ContactType]

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
