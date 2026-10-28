# typed: strong

module Telnyx
  module Models
    module Addresses
      class ActionValidateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Addresses::ActionValidateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Models::Addresses::ActionValidateResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Addresses::ActionValidateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Addresses::ActionValidateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Addresses::ActionValidateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Addresses::ActionValidateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Models::Addresses::ActionValidateResponse::Data::Result::TaggedSymbol
            )
          end
          attr_accessor :result

          # Provides normalized address when available.
          sig do
            returns(
              Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested
            )
          end
          attr_reader :suggested

          sig do
            params(
              suggested:
                Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested::OrHash
            ).void
          end
          attr_writer :suggested

          sig { returns(T.nilable(T::Array[Telnyx::APIError])) }
          attr_reader :errors

          sig { params(errors: T::Array[Telnyx::APIError::OrHash]).void }
          attr_writer :errors

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              result:
                Telnyx::Models::Addresses::ActionValidateResponse::Data::Result::OrSymbol,
              suggested:
                Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested::OrHash,
              errors: T::Array[Telnyx::APIError::OrHash],
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            result:,
            # Provides normalized address when available.
            suggested:,
            errors: nil,
            # Identifies the type of the resource.
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                result:
                  Telnyx::Models::Addresses::ActionValidateResponse::Data::Result::TaggedSymbol,
                suggested:
                  Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested,
                errors: T::Array[Telnyx::APIError],
                record_type: String
              }
            )
          end
          def to_hash
          end

          module Result
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Addresses::ActionValidateResponse::Data::Result
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VALID =
              T.let(
                :valid,
                Telnyx::Models::Addresses::ActionValidateResponse::Data::Result::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Addresses::ActionValidateResponse::Data::Result::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Suggested < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Addresses::ActionValidateResponse::Data::Suggested,
                  Telnyx::Internal::AnyHash
                )
              end

            # The locality of the address. For US addresses, this corresponds to the state of
            # the address.
            sig { returns(T.nilable(String)) }
            attr_reader :administrative_area

            sig { params(administrative_area: String).void }
            attr_writer :administrative_area

            # The borough of the address. This field is not used for addresses in the US but
            # is used for some international addresses.
            sig { returns(T.nilable(String)) }
            attr_reader :borough

            sig { params(borough: String).void }
            attr_writer :borough

            # The two-character (ISO 3166-1 alpha-2) country code of the address.
            sig { returns(T.nilable(String)) }
            attr_reader :country_code

            sig { params(country_code: String).void }
            attr_writer :country_code

            # Additional street address information about the address such as, but not limited
            # to, unit number or apartment number.
            sig { returns(T.nilable(String)) }
            attr_reader :extended_address

            sig { params(extended_address: String).void }
            attr_writer :extended_address

            # Latitude of the suggested address, when available.
            sig { returns(T.nilable(Float)) }
            attr_accessor :latitude

            # The locality of the address. For US addresses, this corresponds to the city of
            # the address.
            sig { returns(T.nilable(String)) }
            attr_reader :locality

            sig { params(locality: String).void }
            attr_writer :locality

            # Longitude of the suggested address, when available.
            sig { returns(T.nilable(Float)) }
            attr_accessor :longitude

            # The neighborhood of the address. This field is not used for addresses in the US
            # but is used for some international addresses.
            sig { returns(T.nilable(String)) }
            attr_reader :neighborhood

            sig { params(neighborhood: String).void }
            attr_writer :neighborhood

            # The postal code of the address.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code

            sig { params(postal_code: String).void }
            attr_writer :postal_code

            # The primary street address information about the address.
            sig { returns(T.nilable(String)) }
            attr_reader :street_address

            sig { params(street_address: String).void }
            attr_writer :street_address

            # Provides normalized address when available.
            sig do
              params(
                administrative_area: String,
                borough: String,
                country_code: String,
                extended_address: String,
                latitude: T.nilable(Float),
                locality: String,
                longitude: T.nilable(Float),
                neighborhood: String,
                postal_code: String,
                street_address: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The locality of the address. For US addresses, this corresponds to the state of
              # the address.
              administrative_area: nil,
              # The borough of the address. This field is not used for addresses in the US but
              # is used for some international addresses.
              borough: nil,
              # The two-character (ISO 3166-1 alpha-2) country code of the address.
              country_code: nil,
              # Additional street address information about the address such as, but not limited
              # to, unit number or apartment number.
              extended_address: nil,
              # Latitude of the suggested address, when available.
              latitude: nil,
              # The locality of the address. For US addresses, this corresponds to the city of
              # the address.
              locality: nil,
              # Longitude of the suggested address, when available.
              longitude: nil,
              # The neighborhood of the address. This field is not used for addresses in the US
              # but is used for some international addresses.
              neighborhood: nil,
              # The postal code of the address.
              postal_code: nil,
              # The primary street address information about the address.
              street_address: nil
            )
            end

            sig do
              override.returns(
                {
                  administrative_area: String,
                  borough: String,
                  country_code: String,
                  extended_address: String,
                  latitude: T.nilable(Float),
                  locality: String,
                  longitude: T.nilable(Float),
                  neighborhood: String,
                  postal_code: String,
                  street_address: String
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
