# typed: strong

module Telnyx
  module Models
    class AvailablePhoneNumberBlockListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AvailablePhoneNumberBlockListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[locality],
      # filter[country_code], filter[national_destination_code],
      # filter[phone_number_type]
      sig do
        returns(T.nilable(Telnyx::AvailablePhoneNumberBlockListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::AvailablePhoneNumberBlockListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::AvailablePhoneNumberBlockListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[locality],
        # filter[country_code], filter[national_destination_code],
        # filter[phone_number_type]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::AvailablePhoneNumberBlockListParams::Filter,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AvailablePhoneNumberBlockListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter phone numbers by country.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Filter phone numbers by city.
        sig { returns(T.nilable(String)) }
        attr_reader :locality

        sig { params(locality: String).void }
        attr_writer :locality

        # Filter by the national destination code of the number.
        sig { returns(T.nilable(String)) }
        attr_reader :national_destination_code

        sig { params(national_destination_code: String).void }
        attr_writer :national_destination_code

        # Filter phone numbers by number type.
        sig do
          returns(
            T.nilable(
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::OrSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Consolidated filter parameter (deepObject style). Originally: filter[locality],
        # filter[country_code], filter[national_destination_code],
        # filter[phone_number_type]
        sig do
          params(
            country_code: String,
            locality: String,
            national_destination_code: String,
            phone_number_type:
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter phone numbers by country.
          country_code: nil,
          # Filter phone numbers by city.
          locality: nil,
          # Filter by the national destination code of the number.
          national_destination_code: nil,
          # Filter phone numbers by number type.
          phone_number_type: nil
        )
        end

        sig do
          override.returns(
            {
              country_code: String,
              locality: String,
              national_destination_code: String,
              phone_number_type:
                Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter phone numbers by number type.
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AvailablePhoneNumberBlockListParams::Filter::PhoneNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
