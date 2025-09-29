# typed: strong

module Telnyx
  module Models
    class AvailablePhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AvailablePhoneNumberListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[phone_number], filter[locality], filter[administrative_area],
      # filter[country_code], filter[national_destination_code], filter[rate_center],
      # filter[phone_number_type], filter[features], filter[limit], filter[best_effort],
      # filter[quickship], filter[reservable], filter[exclude_held_numbers]
      sig { returns(T.nilable(Telnyx::AvailablePhoneNumberListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::AvailablePhoneNumberListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::AvailablePhoneNumberListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[locality], filter[administrative_area],
        # filter[country_code], filter[national_destination_code], filter[rate_center],
        # filter[phone_number_type], filter[features], filter[limit], filter[best_effort],
        # filter[quickship], filter[reservable], filter[exclude_held_numbers]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::AvailablePhoneNumberListParams::Filter,
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
              Telnyx::AvailablePhoneNumberListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Find numbers in a particular US state or CA province.
        sig { returns(T.nilable(String)) }
        attr_reader :administrative_area

        sig { params(administrative_area: String).void }
        attr_writer :administrative_area

        # Filter to determine if best effort results should be included. Only available in
        # USA/CANADA.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :best_effort

        sig { params(best_effort: T::Boolean).void }
        attr_writer :best_effort

        # Filter phone numbers by country.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Filter to exclude phone numbers that are currently on hold/reserved for your
        # account.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :exclude_held_numbers

        sig { params(exclude_held_numbers: T::Boolean).void }
        attr_writer :exclude_held_numbers

        # Filter phone numbers with specific features.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::AvailablePhoneNumberListParams::Filter::Feature::OrSymbol
              ]
            )
          )
        end
        attr_reader :features

        sig do
          params(
            features:
              T::Array[
                Telnyx::AvailablePhoneNumberListParams::Filter::Feature::OrSymbol
              ]
          ).void
        end
        attr_writer :features

        # Limits the number of results.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

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

        # Filter phone numbers by pattern matching.
        sig do
          returns(
            T.nilable(
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumber
            )
          )
        end
        attr_reader :phone_number

        sig do
          params(
            phone_number:
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumber::OrHash
          ).void
        end
        attr_writer :phone_number

        # Filter phone numbers by number type.
        sig do
          returns(
            T.nilable(
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::OrSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Filter to exclude phone numbers that need additional time after to purchase to
        # activate. Only applicable for +1 toll_free numbers.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :quickship

        sig { params(quickship: T::Boolean).void }
        attr_writer :quickship

        # Filter phone numbers by rate center. This filter is only applicable to USA and
        # Canada numbers.
        sig { returns(T.nilable(String)) }
        attr_reader :rate_center

        sig { params(rate_center: String).void }
        attr_writer :rate_center

        # Filter to ensure only numbers that can be reserved are included in the results.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reservable

        sig { params(reservable: T::Boolean).void }
        attr_writer :reservable

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[locality], filter[administrative_area],
        # filter[country_code], filter[national_destination_code], filter[rate_center],
        # filter[phone_number_type], filter[features], filter[limit], filter[best_effort],
        # filter[quickship], filter[reservable], filter[exclude_held_numbers]
        sig do
          params(
            administrative_area: String,
            best_effort: T::Boolean,
            country_code: String,
            exclude_held_numbers: T::Boolean,
            features:
              T::Array[
                Telnyx::AvailablePhoneNumberListParams::Filter::Feature::OrSymbol
              ],
            limit: Integer,
            locality: String,
            national_destination_code: String,
            phone_number:
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumber::OrHash,
            phone_number_type:
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::OrSymbol,
            quickship: T::Boolean,
            rate_center: String,
            reservable: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Find numbers in a particular US state or CA province.
          administrative_area: nil,
          # Filter to determine if best effort results should be included. Only available in
          # USA/CANADA.
          best_effort: nil,
          # Filter phone numbers by country.
          country_code: nil,
          # Filter to exclude phone numbers that are currently on hold/reserved for your
          # account.
          exclude_held_numbers: nil,
          # Filter phone numbers with specific features.
          features: nil,
          # Limits the number of results.
          limit: nil,
          # Filter phone numbers by city.
          locality: nil,
          # Filter by the national destination code of the number.
          national_destination_code: nil,
          # Filter phone numbers by pattern matching.
          phone_number: nil,
          # Filter phone numbers by number type.
          phone_number_type: nil,
          # Filter to exclude phone numbers that need additional time after to purchase to
          # activate. Only applicable for +1 toll_free numbers.
          quickship: nil,
          # Filter phone numbers by rate center. This filter is only applicable to USA and
          # Canada numbers.
          rate_center: nil,
          # Filter to ensure only numbers that can be reserved are included in the results.
          reservable: nil
        )
        end

        sig do
          override.returns(
            {
              administrative_area: String,
              best_effort: T::Boolean,
              country_code: String,
              exclude_held_numbers: T::Boolean,
              features:
                T::Array[
                  Telnyx::AvailablePhoneNumberListParams::Filter::Feature::OrSymbol
                ],
              limit: Integer,
              locality: String,
              national_destination_code: String,
              phone_number:
                Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumber,
              phone_number_type:
                Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::OrSymbol,
              quickship: T::Boolean,
              rate_center: String,
              reservable: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Feature
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AvailablePhoneNumberListParams::Filter::Feature
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )
          MMS =
            T.let(
              :mms,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )
          VOICE =
            T.let(
              :voice,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )
          FAX =
            T.let(
              :fax,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )
          EMERGENCY =
            T.let(
              :emergency,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )
          HD_VOICE =
            T.let(
              :hd_voice,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )
          INTERNATIONAL_SMS =
            T.let(
              :international_sms,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )
          LOCAL_CALLING =
            T.let(
              :local_calling,
              Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AvailablePhoneNumberListParams::Filter::Feature::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter numbers containing a pattern (excludes NDC if used with
          # `national_destination_code` filter).
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Filter numbers ending with a pattern (excludes NDC if used with
          # `national_destination_code` filter).
          sig { returns(T.nilable(String)) }
          attr_reader :ends_with

          sig { params(ends_with: String).void }
          attr_writer :ends_with

          # Filter numbers starting with a pattern (excludes NDC if used with
          # `national_destination_code` filter).
          sig { returns(T.nilable(String)) }
          attr_reader :starts_with

          sig { params(starts_with: String).void }
          attr_writer :starts_with

          # Filter phone numbers by pattern matching.
          sig do
            params(
              contains: String,
              ends_with: String,
              starts_with: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter numbers containing a pattern (excludes NDC if used with
            # `national_destination_code` filter).
            contains: nil,
            # Filter numbers ending with a pattern (excludes NDC if used with
            # `national_destination_code` filter).
            ends_with: nil,
            # Filter numbers starting with a pattern (excludes NDC if used with
            # `national_destination_code` filter).
            starts_with: nil
          )
          end

          sig do
            override.returns(
              { contains: String, ends_with: String, starts_with: String }
            )
          end
          def to_hash
          end
        end

        # Filter phone numbers by number type.
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AvailablePhoneNumberListParams::Filter::PhoneNumberType::TaggedSymbol
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
