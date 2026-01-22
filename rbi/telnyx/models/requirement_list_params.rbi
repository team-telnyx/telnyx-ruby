# typed: strong

module Telnyx
  module Models
    class RequirementListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RequirementListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter for requirements (deepObject style). Originally:
      # filter[country_code], filter[phone_number_type], filter[action]
      sig { returns(T.nilable(Telnyx::RequirementListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::RequirementListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::RequirementListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::RequirementListParams::Page::OrHash).void }
      attr_writer :page

      # Consolidated sort parameter for requirements (deepObject style). Originally:
      # sort[]
      sig do
        returns(
          T.nilable(T::Array[Telnyx::RequirementListParams::Sort::OrSymbol])
        )
      end
      attr_reader :sort

      sig do
        params(
          sort: T::Array[Telnyx::RequirementListParams::Sort::OrSymbol]
        ).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::RequirementListParams::Filter::OrHash,
          page: Telnyx::RequirementListParams::Page::OrHash,
          sort: T::Array[Telnyx::RequirementListParams::Sort::OrSymbol],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for requirements (deepObject style). Originally:
        # filter[country_code], filter[phone_number_type], filter[action]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Consolidated sort parameter for requirements (deepObject style). Originally:
        # sort[]
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RequirementListParams::Filter,
            page: Telnyx::RequirementListParams::Page,
            sort: T::Array[Telnyx::RequirementListParams::Sort::OrSymbol],
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
              Telnyx::RequirementListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filters requirements to those applying to a specific action.
        sig do
          returns(
            T.nilable(Telnyx::RequirementListParams::Filter::Action::OrSymbol)
          )
        end
        attr_reader :action

        sig do
          params(
            action: Telnyx::RequirementListParams::Filter::Action::OrSymbol
          ).void
        end
        attr_writer :action

        # Filters results to those applying to a 2-character (ISO 3166-1 alpha-2) country
        # code
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Filters results to those applying to a specific phone_number_type
        sig do
          returns(
            T.nilable(
              Telnyx::RequirementListParams::Filter::PhoneNumberType::OrSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::RequirementListParams::Filter::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Consolidated filter parameter for requirements (deepObject style). Originally:
        # filter[country_code], filter[phone_number_type], filter[action]
        sig do
          params(
            action: Telnyx::RequirementListParams::Filter::Action::OrSymbol,
            country_code: String,
            phone_number_type:
              Telnyx::RequirementListParams::Filter::PhoneNumberType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filters requirements to those applying to a specific action.
          action: nil,
          # Filters results to those applying to a 2-character (ISO 3166-1 alpha-2) country
          # code
          country_code: nil,
          # Filters results to those applying to a specific phone_number_type
          phone_number_type: nil
        )
        end

        sig do
          override.returns(
            {
              action: Telnyx::RequirementListParams::Filter::Action::OrSymbol,
              country_code: String,
              phone_number_type:
                Telnyx::RequirementListParams::Filter::PhoneNumberType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filters requirements to those applying to a specific action.
        module Action
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::RequirementListParams::Filter::Action)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BRANDED_CALLING =
            T.let(
              :branded_calling,
              Telnyx::RequirementListParams::Filter::Action::TaggedSymbol
            )
          ORDERING =
            T.let(
              :ordering,
              Telnyx::RequirementListParams::Filter::Action::TaggedSymbol
            )
          PORTING =
            T.let(
              :porting,
              Telnyx::RequirementListParams::Filter::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RequirementListParams::Filter::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filters results to those applying to a specific phone_number_type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::RequirementListParams::Filter::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LOCAL =
            T.let(
              :local,
              Telnyx::RequirementListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::RequirementListParams::Filter::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::RequirementListParams::Filter::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::RequirementListParams::Filter::PhoneNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RequirementListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end

      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RequirementListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Telnyx::RequirementListParams::Sort::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, Telnyx::RequirementListParams::Sort::TaggedSymbol)
        COUNTRY_CODE =
          T.let(
            :country_code,
            Telnyx::RequirementListParams::Sort::TaggedSymbol
          )
        PHONE_NUMBER_TYPE =
          T.let(
            :phone_number_type,
            Telnyx::RequirementListParams::Sort::TaggedSymbol
          )
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::RequirementListParams::Sort::TaggedSymbol
          )
        UPDATED_AT_DESC =
          T.let(
            :"-updated_at",
            Telnyx::RequirementListParams::Sort::TaggedSymbol
          )
        COUNTRY_CODE_DESC =
          T.let(
            :"-country_code",
            Telnyx::RequirementListParams::Sort::TaggedSymbol
          )
        PHONE_NUMBER_TYPE_DESC =
          T.let(
            :"-phone_number_type",
            Telnyx::RequirementListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::RequirementListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
