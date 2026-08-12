# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Brands#create
      class BrandResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute addresses
        #
        #   @return [Hash{Symbol=>Telnyx::Models::Rcs::BrandResponse::Address}]
        required :addresses, -> { Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandResponse::Address] }

        # @!attribute brand_id
        #
        #   @return [String]
        required :brand_id, String

        # @!attribute capabilities
        #
        #   @return [Telnyx::Models::Rcs::CapabilitiesResponse]
        required :capabilities, -> { Telnyx::Rcs::CapabilitiesResponse }

        # @!attribute contacts
        #
        #   @return [Hash{Symbol=>Telnyx::Models::Rcs::BrandContact}]
        required :contacts, -> { Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandContact] }

        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String

        # @!attribute identifiers
        #
        #   @return [Hash{Symbol=>Telnyx::Models::Rcs::EinBrandIdentifier, Telnyx::Models::Rcs::StockSymbolBrandIdentifier}]
        required :identifiers,
                 -> { Telnyx::Internal::Type::HashOf[union: Telnyx::Rcs::BrandResponse::Identifier] }

        # @!attribute legal_entity_type
        #
        #   @return [String]
        required :legal_entity_type, String

        # @!attribute legal_name
        #
        #   @return [String]
        required :legal_name, String

        # @!attribute organization_type
        #
        #   @return [String]
        required :organization_type, String

        # @!attribute profile_id
        #
        #   @return [String, nil]
        required :profile_id, String, nil?: true

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::Rcs::BrandResponse::Status]
        required :status, enum: -> { Telnyx::Rcs::BrandResponse::Status }

        # @!attribute website_url
        #
        #   @return [String]
        required :website_url, String

        # @!method initialize(addresses:, brand_id:, capabilities:, contacts:, display_name:, identifiers:, legal_entity_type:, legal_name:, organization_type:, profile_id:, status:, website_url:)
        #   @param addresses [Hash{Symbol=>Telnyx::Models::Rcs::BrandResponse::Address}]
        #   @param brand_id [String]
        #   @param capabilities [Telnyx::Models::Rcs::CapabilitiesResponse]
        #   @param contacts [Hash{Symbol=>Telnyx::Models::Rcs::BrandContact}]
        #   @param display_name [String]
        #   @param identifiers [Hash{Symbol=>Telnyx::Models::Rcs::EinBrandIdentifier, Telnyx::Models::Rcs::StockSymbolBrandIdentifier}]
        #   @param legal_entity_type [String]
        #   @param legal_name [String]
        #   @param organization_type [String]
        #   @param profile_id [String, nil]
        #   @param status [Symbol, Telnyx::Models::Rcs::BrandResponse::Status]
        #   @param website_url [String]

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

        module Identifier
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::Rcs::EinBrandIdentifier }

          variant -> { Telnyx::Rcs::StockSymbolBrandIdentifier }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Rcs::EinBrandIdentifier, Telnyx::Models::Rcs::StockSymbolBrandIdentifier)]
        end

        # @see Telnyx::Models::Rcs::BrandResponse#status
        module Status
          extend Telnyx::Internal::Type::Enum

          CREATED = :CREATED
          CONFIGURED = :CONFIGURED
          SUBMITTED = :SUBMITTED
          REVIEWING = :REVIEWING
          VETTING = :VETTING
          VERIFIED = :VERIFIED
          REJECTED = :REJECTED
          FAILED = :FAILED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
