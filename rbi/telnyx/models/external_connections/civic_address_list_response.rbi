# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class CivicAddressListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::CivicAddressListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data
              ]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Uniquely identifies the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :city_or_town

          sig { params(city_or_town: String).void }
          attr_writer :city_or_town

          sig { returns(T.nilable(String)) }
          attr_reader :city_or_town_alias

          sig { params(city_or_town_alias: String).void }
          attr_writer :city_or_town_alias

          sig { returns(T.nilable(String)) }
          attr_reader :company_name

          sig { params(company_name: String).void }
          attr_writer :company_name

          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          sig { returns(T.nilable(String)) }
          attr_reader :country_or_district

          sig { params(country_or_district: String).void }
          attr_writer :country_or_district

          # Identifies what is the default location in the list of locations.
          sig { returns(T.nilable(String)) }
          attr_reader :default_location_id

          sig { params(default_location_id: String).void }
          attr_writer :default_location_id

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :house_number

          sig { params(house_number: String).void }
          attr_writer :house_number

          sig { returns(T.nilable(String)) }
          attr_reader :house_number_suffix

          sig { params(house_number_suffix: String).void }
          attr_writer :house_number_suffix

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data::Location
                ]
              )
            )
          end
          attr_reader :locations

          sig do
            params(
              locations:
                T::Array[
                  Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data::Location::OrHash
                ]
            ).void
          end
          attr_writer :locations

          sig { returns(T.nilable(String)) }
          attr_reader :postal_or_zip_code

          sig { params(postal_or_zip_code: String).void }
          attr_writer :postal_or_zip_code

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(String)) }
          attr_reader :state_or_province

          sig { params(state_or_province: String).void }
          attr_writer :state_or_province

          sig { returns(T.nilable(String)) }
          attr_reader :street_name

          sig { params(street_name: String).void }
          attr_writer :street_name

          sig { returns(T.nilable(String)) }
          attr_reader :street_suffix

          sig { params(street_suffix: String).void }
          attr_writer :street_suffix

          sig do
            params(
              id: String,
              city_or_town: String,
              city_or_town_alias: String,
              company_name: String,
              country: String,
              country_or_district: String,
              default_location_id: String,
              description: String,
              house_number: String,
              house_number_suffix: String,
              locations:
                T::Array[
                  Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data::Location::OrHash
                ],
              postal_or_zip_code: String,
              record_type: String,
              state_or_province: String,
              street_name: String,
              street_suffix: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Uniquely identifies the resource.
            id: nil,
            city_or_town: nil,
            city_or_town_alias: nil,
            company_name: nil,
            country: nil,
            country_or_district: nil,
            # Identifies what is the default location in the list of locations.
            default_location_id: nil,
            description: nil,
            house_number: nil,
            house_number_suffix: nil,
            locations: nil,
            postal_or_zip_code: nil,
            # Identifies the type of the resource.
            record_type: nil,
            state_or_province: nil,
            street_name: nil,
            street_suffix: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                city_or_town: String,
                city_or_town_alias: String,
                company_name: String,
                country: String,
                country_or_district: String,
                default_location_id: String,
                description: String,
                house_number: String,
                house_number_suffix: String,
                locations:
                  T::Array[
                    Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data::Location
                  ],
                postal_or_zip_code: String,
                record_type: String,
                state_or_province: String,
                street_name: String,
                street_suffix: String
              }
            )
          end
          def to_hash
          end

          class Location < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data::Location,
                  Telnyx::Internal::AnyHash
                )
              end

            # Uniquely identifies the resource.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :additional_info

            sig { params(additional_info: String).void }
            attr_writer :additional_info

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Represents whether the location is the default or not.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_default

            sig { params(is_default: T::Boolean).void }
            attr_writer :is_default

            sig do
              params(
                id: String,
                additional_info: String,
                description: String,
                is_default: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Uniquely identifies the resource.
              id: nil,
              additional_info: nil,
              description: nil,
              # Represents whether the location is the default or not.
              is_default: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  additional_info: String,
                  description: String,
                  is_default: T::Boolean
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
