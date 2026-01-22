# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberBlockListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PhoneNumberBlockListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[porting_order_id], filter[support_key], filter[status],
        # filter[phone_number], filter[activation_status], filter[portability_status]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::PhoneNumberBlockListParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort)
          )
        end
        attr_reader :sort

        sig do
          params(
            sort:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::OrHash
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_order_id], filter[support_key], filter[status],
          # filter[phone_number], filter[activation_status], filter[portability_status]
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
              filter: Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter,
              page: Telnyx::PortingOrders::PhoneNumberBlockListParams::Page,
              sort: Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort,
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
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter results by activation status
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::OrSymbol
              )
            )
          end
          attr_reader :activation_status

          sig do
            params(
              activation_status:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::OrSymbol
            ).void
          end
          attr_writer :activation_status

          # Filter results by a list of phone numbers
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :phone_number

          sig { params(phone_number: T::Array[String]).void }
          attr_writer :phone_number

          # Filter results by portability status
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::OrSymbol
              )
            )
          end
          attr_reader :portability_status

          sig do
            params(
              portability_status:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::OrSymbol
            ).void
          end
          attr_writer :portability_status

          # Filter results by a list of porting order ids
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :porting_order_id

          sig { params(porting_order_id: T::Array[String]).void }
          attr_writer :porting_order_id

          # Filter porting orders by status(es). Originally: filter[status],
          # filter[status][in][]
          sig do
            returns(
              T.nilable(
                T.any(
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::OrSymbol,
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::OrSymbol
                  ]
                )
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                T.any(
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::OrSymbol,
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::OrSymbol
                  ]
                )
            ).void
          end
          attr_writer :status

          # Filter results by support key(s). Originally: filter[support_key][eq],
          # filter[support_key][in][]
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::SupportKey::Variants
              )
            )
          end
          attr_reader :support_key

          sig do
            params(
              support_key:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::SupportKey::Variants
            ).void
          end
          attr_writer :support_key

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[porting_order_id], filter[support_key], filter[status],
          # filter[phone_number], filter[activation_status], filter[portability_status]
          sig do
            params(
              activation_status:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::OrSymbol,
              phone_number: T::Array[String],
              portability_status:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::OrSymbol,
              porting_order_id: T::Array[String],
              status:
                T.any(
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::OrSymbol,
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::OrSymbol
                  ]
                ),
              support_key:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::SupportKey::Variants
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter results by activation status
            activation_status: nil,
            # Filter results by a list of phone numbers
            phone_number: nil,
            # Filter results by portability status
            portability_status: nil,
            # Filter results by a list of porting order ids
            porting_order_id: nil,
            # Filter porting orders by status(es). Originally: filter[status],
            # filter[status][in][]
            status: nil,
            # Filter results by support key(s). Originally: filter[support_key][eq],
            # filter[support_key][in][]
            support_key: nil
          )
          end

          sig do
            override.returns(
              {
                activation_status:
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::OrSymbol,
                phone_number: T::Array[String],
                portability_status:
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::OrSymbol,
                porting_order_id: T::Array[String],
                status:
                  T.any(
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::OrSymbol,
                    T::Array[
                      Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::OrSymbol
                    ]
                  ),
                support_key:
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::SupportKey::Variants
              }
            )
          end
          def to_hash
          end

          # Filter results by activation status
          module ActivationStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEW =
              T.let(
                :New,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            PENDING =
              T.let(
                :Pending,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            CONFLICT =
              T.let(
                :Conflict,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            CANCEL_PENDING =
              T.let(
                :"Cancel Pending",
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :Failed,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            CONCURRED =
              T.let(
                :Concurred,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            ACTIVATE_RDY =
              T.let(
                :"Activate RDY",
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            DISCONNECT_PENDING =
              T.let(
                :"Disconnect Pending",
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            CONCURRENCE_SENT =
              T.let(
                :"Concurrence Sent",
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            OLD =
              T.let(
                :Old,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            SENDING =
              T.let(
                :Sending,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :Active,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :Cancelled,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::ActivationStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter results by portability status
          module PortabilityStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::TaggedSymbol
              )
            CONFIRMED =
              T.let(
                :confirmed,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::TaggedSymbol
              )
            PROVISIONAL =
              T.let(
                :provisional,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::PortabilityStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter porting orders by status(es). Originally: filter[status],
          # filter[status][in][]
          module Status
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol,
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                  ]
                )
              end

            # Filter by single status
            module PortingOrderSingleStatus
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DRAFT =
                T.let(
                  :draft,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )
              IN_PROCESS =
                T.let(
                  :"in-process",
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )
              SUBMITTED =
                T.let(
                  :submitted,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )
              EXCEPTION =
                T.let(
                  :exception,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )
              FOC_DATE_CONFIRMED =
                T.let(
                  :"foc-date-confirmed",
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )
              CANCEL_PENDING =
                T.let(
                  :"cancel-pending",
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )
              PORTED =
                T.let(
                  :ported,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )
              CANCELLED =
                T.let(
                  :cancelled,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::PortingOrderSingleStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module UnionMember1
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DRAFT =
                T.let(
                  :draft,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )
              IN_PROCESS =
                T.let(
                  :"in-process",
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )
              SUBMITTED =
                T.let(
                  :submitted,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )
              EXCEPTION =
                T.let(
                  :exception,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )
              FOC_DATE_CONFIRMED =
                T.let(
                  :"foc-date-confirmed",
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )
              CANCEL_PENDING =
                T.let(
                  :"cancel-pending",
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )
              PORTED =
                T.let(
                  :ported,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )
              CANCELLED =
                T.let(
                  :cancelled,
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::Variants
                ]
              )
            end
            def self.variants
            end

            UnionMember1Array =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  enum:
                    Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::Status::UnionMember1
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          # Filter results by support key(s). Originally: filter[support_key][eq],
          # filter[support_key][in][]
          module SupportKey
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(String, T::Array[String]) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Filter::SupportKey::Variants
                ]
              )
            end
            def self.variants
            end

            StringArray =
              T.let(
                Telnyx::Internal::Type::ArrayOf[String],
                Telnyx::Internal::Type::Converter
              )
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Page,
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
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value::OrSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value::OrSymbol
            ).void
          end
          attr_writer :value

          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sig do
            params(
              value:
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value::OrSymbol
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
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT_DESC =
              T.let(
                :"-created_at",
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value::TaggedSymbol
              )
            CREATED_AT =
              T.let(
                :created_at,
                Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberBlockListParams::Sort::Value::TaggedSymbol
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
