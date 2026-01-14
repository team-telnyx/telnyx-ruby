# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberConfigurationListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[porting_order.status][in][], filter[porting_phone_number][in][],
        # filter[user_bundle_id][in][]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::OrHash
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
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort
            )
          )
        end
        attr_reader :sort

        sig do
          params(
            sort:
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::OrHash
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter:
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            sort:
              Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_order.status][in][], filter[porting_phone_number][in][],
          # filter[user_bundle_id][in][]
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
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter,
              page_number: Integer,
              page_size: Integer,
              sort:
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort,
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
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder
              )
            )
          end
          attr_reader :porting_order

          sig do
            params(
              porting_order:
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::OrHash
            ).void
          end
          attr_writer :porting_order

          # Filter results by a list of porting phone number IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :porting_phone_number

          sig { params(porting_phone_number: T::Array[String]).void }
          attr_writer :porting_phone_number

          # Filter results by a list of user bundle IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :user_bundle_id

          sig { params(user_bundle_id: T::Array[String]).void }
          attr_writer :user_bundle_id

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_order.status][in][], filter[porting_phone_number][in][],
          # filter[user_bundle_id][in][]
          sig do
            params(
              porting_order:
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::OrHash,
              porting_phone_number: T::Array[String],
              user_bundle_id: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            porting_order: nil,
            # Filter results by a list of porting phone number IDs
            porting_phone_number: nil,
            # Filter results by a list of user bundle IDs
            user_bundle_id: nil
          )
          end

          sig do
            override.returns(
              {
                porting_order:
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder,
                porting_phone_number: T::Array[String],
                user_bundle_id: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class PortingOrder < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder,
                  Telnyx::Internal::AnyHash
                )
              end

            # Filter results by specific porting order statuses
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::OrSymbol
                  ]
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::OrSymbol
                  ]
              ).void
            end
            attr_writer :status

            sig do
              params(
                status:
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::OrSymbol
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Filter results by specific porting order statuses
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  status:
                    T::Array[
                      Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::OrSymbol
                    ]
                }
              )
            end
            def to_hash
            end

            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ACTIVATION_IN_PROGRESS =
                T.let(
                  :"activation-in-progress",
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              CANCEL_PENDING =
                T.let(
                  :"cancel-pending",
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              CANCELLED =
                T.let(
                  :cancelled,
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              DRAFT =
                T.let(
                  :draft,
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              EXCEPTION =
                T.let(
                  :exception,
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              FOC_DATE_CONFIRMED =
                T.let(
                  :"foc-date-confirmed",
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              IN_PROCESS =
                T.let(
                  :"in-process",
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              PORTED =
                T.let(
                  :ported,
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )
              SUBMITTED =
                T.let(
                  :submitted,
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Filter::PortingOrder::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Sort < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value::OrSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value::OrSymbol
            ).void
          end
          attr_writer :value

          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sig do
            params(
              value:
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT =
              T.let(
                :created_at,
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value::TaggedSymbol
              )
            CREATED_AT_DESC =
              T.let(
                :"-created_at",
                Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberConfigurationListParams::Sort::Value::TaggedSymbol
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
