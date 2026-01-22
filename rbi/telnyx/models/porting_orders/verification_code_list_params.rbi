# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class VerificationCodeListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::VerificationCodeListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally: filter[verified]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::VerificationCodeListParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PortingOrders::VerificationCodeListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::VerificationCodeListParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page:
              Telnyx::PortingOrders::VerificationCodeListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::VerificationCodeListParams::Sort)
          )
        end
        attr_reader :sort

        sig do
          params(
            sort:
              Telnyx::PortingOrders::VerificationCodeListParams::Sort::OrHash
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter:
              Telnyx::PortingOrders::VerificationCodeListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::VerificationCodeListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::VerificationCodeListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally: filter[verified]
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
              filter: Telnyx::PortingOrders::VerificationCodeListParams::Filter,
              page: Telnyx::PortingOrders::VerificationCodeListParams::Page,
              sort: Telnyx::PortingOrders::VerificationCodeListParams::Sort,
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
                Telnyx::PortingOrders::VerificationCodeListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter verification codes that have been verified or not
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :verified

          sig { params(verified: T::Boolean).void }
          attr_writer :verified

          # Consolidated filter parameter (deepObject style). Originally: filter[verified]
          sig { params(verified: T::Boolean).returns(T.attached_class) }
          def self.new(
            # Filter verification codes that have been verified or not
            verified: nil
          )
          end

          sig { override.returns({ verified: T::Boolean }) }
          def to_hash
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::VerificationCodeListParams::Page,
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
                Telnyx::PortingOrders::VerificationCodeListParams::Sort,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value::OrSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value::OrSymbol
            ).void
          end
          attr_writer :value

          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sig do
            params(
              value:
                Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies the sort order for results. If not given, results are sorted by
            # created_at in descending order.
            value: nil
          )
          end

          sig do
            override.returns(
              {
                value:
                  Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          module Value
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT =
              T.let(
                :created_at,
                Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value::TaggedSymbol
              )
            CREATED_AT_DESC =
              T.let(
                :"-created_at",
                Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::VerificationCodeListParams::Sort::Value::TaggedSymbol
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
