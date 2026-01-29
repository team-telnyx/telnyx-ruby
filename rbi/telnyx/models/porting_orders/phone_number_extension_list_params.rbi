# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberExtensionListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PhoneNumberExtensionListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[porting_phone_number_id]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Filter
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Page
            )
          )
        end
        attr_reader :page

        sig do
          params(
            page:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort
            )
          )
        end
        attr_reader :sort

        sig do
          params(
            sort:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::OrHash
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_phone_number_id]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter:
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Filter,
              page: Telnyx::PortingOrders::PhoneNumberExtensionListParams::Page,
              sort: Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort,
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
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter results by porting phone number id
          sig { returns(T.nilable(String)) }
          attr_reader :porting_phone_number_id

          sig { params(porting_phone_number_id: String).void }
          attr_writer :porting_phone_number_id

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_phone_number_id]
          sig do
            params(porting_phone_number_id: String).returns(T.attached_class)
          end
          def self.new(
            # Filter results by porting phone number id
            porting_phone_number_id: nil
          )
          end

          sig { override.returns({ porting_phone_number_id: String }) }
          def to_hash
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Page,
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
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
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

        class Sort < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value::OrSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value::OrSymbol
            ).void
          end
          attr_writer :value

          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sig do
            params(
              value:
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies the sort order for results. If not given, results are sorted by
            # created_at in descending order
            value: nil
          )
          end

          sig do
            override.returns(
              {
                value:
                  Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order
          module Value
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT_DESC =
              T.let(
                :"-created_at",
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value::TaggedSymbol
              )
            CREATED_AT =
              T.let(
                :created_at,
                Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberExtensionListParams::Sort::Value::TaggedSymbol
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
end
