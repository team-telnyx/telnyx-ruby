# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      class CivicAddress < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute city_or_town
        #
        #   @return [String, nil]
        optional :city_or_town, String

        # @!attribute city_or_town_alias
        #
        #   @return [String, nil]
        optional :city_or_town_alias, String

        # @!attribute company_name
        #
        #   @return [String, nil]
        optional :company_name, String

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute country_or_district
        #
        #   @return [String, nil]
        optional :country_or_district, String

        # @!attribute default_location_id
        #   Identifies what is the default location in the list of locations.
        #
        #   @return [String, nil]
        optional :default_location_id, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute house_number
        #
        #   @return [String, nil]
        optional :house_number, String

        # @!attribute house_number_suffix
        #
        #   @return [String, nil]
        optional :house_number_suffix, String

        # @!attribute locations
        #
        #   @return [Array<Telnyx::Models::ExternalConnections::Location>, nil]
        optional :locations, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::Location] }

        # @!attribute postal_or_zip_code
        #
        #   @return [String, nil]
        optional :postal_or_zip_code, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute state_or_province
        #
        #   @return [String, nil]
        optional :state_or_province, String

        # @!attribute street_name
        #
        #   @return [String, nil]
        optional :street_name, String

        # @!attribute street_suffix
        #
        #   @return [String, nil]
        optional :street_suffix, String

        # @!method initialize(id: nil, city_or_town: nil, city_or_town_alias: nil, company_name: nil, country: nil, country_or_district: nil, default_location_id: nil, description: nil, house_number: nil, house_number_suffix: nil, locations: nil, postal_or_zip_code: nil, record_type: nil, state_or_province: nil, street_name: nil, street_suffix: nil)
        #   @param id [String] Uniquely identifies the resource.
        #
        #   @param city_or_town [String]
        #
        #   @param city_or_town_alias [String]
        #
        #   @param company_name [String]
        #
        #   @param country [String]
        #
        #   @param country_or_district [String]
        #
        #   @param default_location_id [String] Identifies what is the default location in the list of locations.
        #
        #   @param description [String]
        #
        #   @param house_number [String]
        #
        #   @param house_number_suffix [String]
        #
        #   @param locations [Array<Telnyx::Models::ExternalConnections::Location>]
        #
        #   @param postal_or_zip_code [String]
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param state_or_province [String]
        #
        #   @param street_name [String]
        #
        #   @param street_suffix [String]
      end
    end
  end
end
