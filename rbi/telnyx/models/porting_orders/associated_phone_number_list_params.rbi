# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class AssociatedPhoneNumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[action]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort
            )
          )
        end
        attr_reader :sort

        sig do
          params(
            sort:
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::OrHash
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter:
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort:
              Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[phone_number], filter[action]
          filter: nil,
          page_number: nil,
          page_size: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter:
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter,
              page_number: Integer,
              page_size: Integer,
              sort:
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort,
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
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter results by action type
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action::OrSymbol
              )
            )
          end
          attr_reader :action

          sig do
            params(
              action:
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action::OrSymbol
            ).void
          end
          attr_writer :action

          # Filter results by a phone number. It should be in E.164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[phone_number], filter[action]
          sig do
            params(
              action:
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action::OrSymbol,
              phone_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter results by action type
            action: nil,
            # Filter results by a phone number. It should be in E.164 format.
            phone_number: nil
          )
          end

          sig do
            override.returns(
              {
                action:
                  Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action::OrSymbol,
                phone_number: String
              }
            )
          end
          def to_hash
          end

          # Filter results by action type
          module Action
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            KEEP =
              T.let(
                :keep,
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action::TaggedSymbol
              )
            DISCONNECT =
              T.let(
                :disconnect,
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Filter::Action::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Sort < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value::OrSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value::OrSymbol
            ).void
          end
          attr_writer :value

          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sig do
            params(
              value:
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT_DESC =
              T.let(
                :"-created_at",
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value::TaggedSymbol
              )
            CREATED_AT =
              T.let(
                :created_at,
                Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::AssociatedPhoneNumberListParams::Sort::Value::TaggedSymbol
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
