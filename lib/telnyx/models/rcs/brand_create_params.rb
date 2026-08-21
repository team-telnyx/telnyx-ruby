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
        #   @return [Hash{Symbol=>Telnyx::Models::Rcs::BrandAddress}]
        required :addresses, -> { Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandAddress] }

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
        #   @param addresses [Hash{Symbol=>Telnyx::Models::Rcs::BrandAddress}]
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
            # @!method initialize
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
