# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::CivicAddresses#retrieve
      class CivicAddressRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse::Data, nil]
        optional :data, -> { Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse::Data]

        # @see Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
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
          #   @return [Array<Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse::Data::Location>, nil]
          optional :locations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse::Data::Location] }

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
          #   @param locations [Array<Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse::Data::Location>]
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

          class Location < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Uniquely identifies the resource.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute additional_info
            #
            #   @return [String, nil]
            optional :additional_info, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute is_default
            #   Represents whether the location is the default or not.
            #
            #   @return [Boolean, nil]
            optional :is_default, Telnyx::Internal::Type::Boolean

            # @!method initialize(id: nil, additional_info: nil, description: nil, is_default: nil)
            #   @param id [String] Uniquely identifies the resource.
            #
            #   @param additional_info [String]
            #
            #   @param description [String]
            #
            #   @param is_default [Boolean] Represents whether the location is the default or not.
          end
        end
      end
    end
  end
end
