# typed: strong

module Telnyx
  module Models
    class InventoryCoverageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::InventoryCoverageListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[npa],
      # filter[nxx], filter[administrative_area], filter[phone_number_type],
      # filter[country_code], filter[count], filter[features], filter[groupBy]
      sig { returns(T.nilable(Telnyx::InventoryCoverageListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::InventoryCoverageListParams::Filter::OrHash).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::InventoryCoverageListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[npa],
        # filter[nxx], filter[administrative_area], filter[phone_number_type],
        # filter[country_code], filter[count], filter[features], filter[groupBy]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::InventoryCoverageListParams::Filter,
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
              Telnyx::InventoryCoverageListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by administrative area
        sig { returns(T.nilable(String)) }
        attr_reader :administrative_area

        sig { params(administrative_area: String).void }
        attr_writer :administrative_area

        # Include count in the result
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :count

        sig { params(count: T::Boolean).void }
        attr_writer :count

        # Filter by country. Defaults to US
        sig do
          returns(
            T.nilable(
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::OrSymbol
            )
          )
        end
        attr_reader :country_code

        sig do
          params(
            country_code:
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::OrSymbol
          ).void
        end
        attr_writer :country_code

        # Filter if the phone number should be used for voice, fax, mms, sms, emergency.
        # Returns features in the response when used.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::InventoryCoverageListParams::Filter::Feature::OrSymbol
              ]
            )
          )
        end
        attr_reader :features

        sig do
          params(
            features:
              T::Array[
                Telnyx::InventoryCoverageListParams::Filter::Feature::OrSymbol
              ]
          ).void
        end
        attr_writer :features

        # Filter to group results
        sig do
          returns(
            T.nilable(
              Telnyx::InventoryCoverageListParams::Filter::GroupBy::OrSymbol
            )
          )
        end
        attr_reader :group_by

        sig do
          params(
            group_by:
              Telnyx::InventoryCoverageListParams::Filter::GroupBy::OrSymbol
          ).void
        end
        attr_writer :group_by

        # Filter by npa
        sig { returns(T.nilable(Integer)) }
        attr_reader :npa

        sig { params(npa: Integer).void }
        attr_writer :npa

        # Filter by nxx
        sig { returns(T.nilable(Integer)) }
        attr_reader :nxx

        sig { params(nxx: Integer).void }
        attr_writer :nxx

        # Filter by phone number type
        sig do
          returns(
            T.nilable(
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::OrSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Consolidated filter parameter (deepObject style). Originally: filter[npa],
        # filter[nxx], filter[administrative_area], filter[phone_number_type],
        # filter[country_code], filter[count], filter[features], filter[groupBy]
        sig do
          params(
            administrative_area: String,
            count: T::Boolean,
            country_code:
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::OrSymbol,
            features:
              T::Array[
                Telnyx::InventoryCoverageListParams::Filter::Feature::OrSymbol
              ],
            group_by:
              Telnyx::InventoryCoverageListParams::Filter::GroupBy::OrSymbol,
            npa: Integer,
            nxx: Integer,
            phone_number_type:
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by administrative area
          administrative_area: nil,
          # Include count in the result
          count: nil,
          # Filter by country. Defaults to US
          country_code: nil,
          # Filter if the phone number should be used for voice, fax, mms, sms, emergency.
          # Returns features in the response when used.
          features: nil,
          # Filter to group results
          group_by: nil,
          # Filter by npa
          npa: nil,
          # Filter by nxx
          nxx: nil,
          # Filter by phone number type
          phone_number_type: nil
        )
        end

        sig do
          override.returns(
            {
              administrative_area: String,
              count: T::Boolean,
              country_code:
                Telnyx::InventoryCoverageListParams::Filter::CountryCode::OrSymbol,
              features:
                T::Array[
                  Telnyx::InventoryCoverageListParams::Filter::Feature::OrSymbol
                ],
              group_by:
                Telnyx::InventoryCoverageListParams::Filter::GroupBy::OrSymbol,
              npa: Integer,
              nxx: Integer,
              phone_number_type:
                Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter by country. Defaults to US
        module CountryCode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::InventoryCoverageListParams::Filter::CountryCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AT =
            T.let(
              :AT,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          AU =
            T.let(
              :AU,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          BE =
            T.let(
              :BE,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          BG =
            T.let(
              :BG,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          CA =
            T.let(
              :CA,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          CH =
            T.let(
              :CH,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          CN =
            T.let(
              :CN,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          CY =
            T.let(
              :CY,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          CZ =
            T.let(
              :CZ,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          DE =
            T.let(
              :DE,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          DK =
            T.let(
              :DK,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          EE =
            T.let(
              :EE,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          ES =
            T.let(
              :ES,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          FI =
            T.let(
              :FI,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          FR =
            T.let(
              :FR,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          GB =
            T.let(
              :GB,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          GR =
            T.let(
              :GR,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          HU =
            T.let(
              :HU,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          HR =
            T.let(
              :HR,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          IE =
            T.let(
              :IE,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          IT =
            T.let(
              :IT,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          LT =
            T.let(
              :LT,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          LU =
            T.let(
              :LU,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          LV =
            T.let(
              :LV,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          NL =
            T.let(
              :NL,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          NZ =
            T.let(
              :NZ,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          MX =
            T.let(
              :MX,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          NO =
            T.let(
              :NO,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          PL =
            T.let(
              :PL,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          PT =
            T.let(
              :PT,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          RO =
            T.let(
              :RO,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          SE =
            T.let(
              :SE,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          SG =
            T.let(
              :SG,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          SI =
            T.let(
              :SI,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          SK =
            T.let(
              :SK,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::InventoryCoverageListParams::Filter::CountryCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Feature
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::InventoryCoverageListParams::Filter::Feature
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              Telnyx::InventoryCoverageListParams::Filter::Feature::TaggedSymbol
            )
          MMS =
            T.let(
              :mms,
              Telnyx::InventoryCoverageListParams::Filter::Feature::TaggedSymbol
            )
          VOICE =
            T.let(
              :voice,
              Telnyx::InventoryCoverageListParams::Filter::Feature::TaggedSymbol
            )
          FAX =
            T.let(
              :fax,
              Telnyx::InventoryCoverageListParams::Filter::Feature::TaggedSymbol
            )
          EMERGENCY =
            T.let(
              :emergency,
              Telnyx::InventoryCoverageListParams::Filter::Feature::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::InventoryCoverageListParams::Filter::Feature::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter to group results
        module GroupBy
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::InventoryCoverageListParams::Filter::GroupBy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCALITY =
            T.let(
              :locality,
              Telnyx::InventoryCoverageListParams::Filter::GroupBy::TaggedSymbol
            )
          NPA =
            T.let(
              :npa,
              Telnyx::InventoryCoverageListParams::Filter::GroupBy::TaggedSymbol
            )
          NATIONAL_DESTINATION_CODE =
            T.let(
              :national_destination_code,
              Telnyx::InventoryCoverageListParams::Filter::GroupBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::InventoryCoverageListParams::Filter::GroupBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter by phone number type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          LANDLINE =
            T.let(
              :landline,
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::InventoryCoverageListParams::Filter::PhoneNumberType::TaggedSymbol
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
