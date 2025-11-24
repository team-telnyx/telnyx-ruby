# typed: strong

module Telnyx
  module Models
    class InexplicitNumberOrderListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::InexplicitNumberOrderListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::InexplicitNumberOrderListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::InexplicitNumberOrderListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::InexplicitNumberOrderListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the inexplicit number order
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Billing group id to apply to phone numbers that are purchased
        sig { returns(T.nilable(String)) }
        attr_reader :billing_group_id

        sig { params(billing_group_id: String).void }
        attr_writer :billing_group_id

        # Connection id to apply to phone numbers that are purchased
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # ISO 8601 formatted date indicating when the resource was created
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Reference label for the customer
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # Messaging profile id to apply to phone numbers that are purchased
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup
              ]
            )
          )
        end
        attr_reader :ordering_groups

        sig do
          params(
            ordering_groups:
              T::Array[
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::OrHash
              ]
          ).void
        end
        attr_writer :ordering_groups

        # ISO 8601 formatted date indicating when the resource was updated
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            billing_group_id: String,
            connection_id: String,
            created_at: Time,
            customer_reference: String,
            messaging_profile_id: String,
            ordering_groups:
              T::Array[
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::OrHash
              ],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the inexplicit number order
          id: nil,
          # Billing group id to apply to phone numbers that are purchased
          billing_group_id: nil,
          # Connection id to apply to phone numbers that are purchased
          connection_id: nil,
          # ISO 8601 formatted date indicating when the resource was created
          created_at: nil,
          # Reference label for the customer
          customer_reference: nil,
          # Messaging profile id to apply to phone numbers that are purchased
          messaging_profile_id: nil,
          ordering_groups: nil,
          # ISO 8601 formatted date indicating when the resource was updated
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_group_id: String,
              connection_id: String,
              created_at: Time,
              customer_reference: String,
              messaging_profile_id: String,
              ordering_groups:
                T::Array[
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup
                ],
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class OrderingGroup < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter for phone numbers in a given state / province
          sig { returns(T.nilable(String)) }
          attr_reader :administrative_area

          sig { params(administrative_area: String).void }
          attr_writer :administrative_area

          # Quantity of phone numbers allocated
          sig { returns(T.nilable(Integer)) }
          attr_reader :count_allocated

          sig { params(count_allocated: Integer).void }
          attr_writer :count_allocated

          # Quantity of phone numbers requested
          sig { returns(T.nilable(Integer)) }
          attr_reader :count_requested

          sig { params(count_requested: Integer).void }
          attr_writer :count_requested

          # Country where you would like to purchase phone numbers
          sig { returns(T.nilable(String)) }
          attr_reader :country_iso

          sig { params(country_iso: String).void }
          attr_writer :country_iso

          # ISO 8601 formatted date indicating when the ordering group was created
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Error reason if applicable
          sig { returns(T.nilable(String)) }
          attr_reader :error_reason

          sig { params(error_reason: String).void }
          attr_writer :error_reason

          # Filter by area code
          sig { returns(T.nilable(String)) }
          attr_reader :national_destination_code

          sig { params(national_destination_code: String).void }
          attr_writer :national_destination_code

          # Array of orders created to fulfill the inexplicit order
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Order
                ]
              )
            )
          end
          attr_reader :orders

          sig do
            params(
              orders:
                T::Array[
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Order::OrHash
                ]
            ).void
          end
          attr_writer :orders

          # Number type
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number_type

          sig { params(phone_number_type: String).void }
          attr_writer :phone_number_type

          # Filter for phone numbers that contain the digits specified
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number_contains

          sig { params(phone_number_contains: String).void }
          attr_writer :phone_number_contains

          # Filter by the ending digits of the phone number
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number_ends_with

          sig { params(phone_number_ends_with: String).void }
          attr_writer :phone_number_ends_with

          # Filter by the starting digits of the phone number
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number_starts_with

          sig { params(phone_number_starts_with: String).void }
          attr_writer :phone_number_starts_with

          # Status of the ordering group
          sig do
            returns(
              T.nilable(
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Ordering strategy used
          sig do
            returns(
              T.nilable(
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy::TaggedSymbol
              )
            )
          end
          attr_reader :strategy

          sig do
            params(
              strategy:
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy::OrSymbol
            ).void
          end
          attr_writer :strategy

          # ISO 8601 formatted date indicating when the ordering group was updated
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              administrative_area: String,
              count_allocated: Integer,
              count_requested: Integer,
              country_iso: String,
              created_at: Time,
              error_reason: String,
              national_destination_code: String,
              orders:
                T::Array[
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Order::OrHash
                ],
              phone_number_type: String,
              phone_number_contains: String,
              phone_number_ends_with: String,
              phone_number_starts_with: String,
              status:
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::OrSymbol,
              strategy:
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy::OrSymbol,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter for phone numbers in a given state / province
            administrative_area: nil,
            # Quantity of phone numbers allocated
            count_allocated: nil,
            # Quantity of phone numbers requested
            count_requested: nil,
            # Country where you would like to purchase phone numbers
            country_iso: nil,
            # ISO 8601 formatted date indicating when the ordering group was created
            created_at: nil,
            # Error reason if applicable
            error_reason: nil,
            # Filter by area code
            national_destination_code: nil,
            # Array of orders created to fulfill the inexplicit order
            orders: nil,
            # Number type
            phone_number_type: nil,
            # Filter for phone numbers that contain the digits specified
            phone_number_contains: nil,
            # Filter by the ending digits of the phone number
            phone_number_ends_with: nil,
            # Filter by the starting digits of the phone number
            phone_number_starts_with: nil,
            # Status of the ordering group
            status: nil,
            # Ordering strategy used
            strategy: nil,
            # ISO 8601 formatted date indicating when the ordering group was updated
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                administrative_area: String,
                count_allocated: Integer,
                count_requested: Integer,
                country_iso: String,
                created_at: Time,
                error_reason: String,
                national_destination_code: String,
                orders:
                  T::Array[
                    Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Order
                  ],
                phone_number_type: String,
                phone_number_contains: String,
                phone_number_ends_with: String,
                phone_number_starts_with: String,
                status:
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol,
                strategy:
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy::TaggedSymbol,
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          class Order < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Order,
                  Telnyx::Internal::AnyHash
                )
              end

            # ID of the main number order
            sig { returns(String) }
            attr_accessor :number_order_id

            # Array of sub number order IDs
            sig { returns(T::Array[String]) }
            attr_accessor :sub_number_order_ids

            sig do
              params(
                number_order_id: String,
                sub_number_order_ids: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # ID of the main number order
              number_order_id:,
              # Array of sub number order IDs
              sub_number_order_ids:
            )
            end

            sig do
              override.returns(
                {
                  number_order_id: String,
                  sub_number_order_ids: T::Array[String]
                }
              )
            end
            def to_hash
            end
          end

          # Status of the ordering group
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :processing,
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol
              )
            SUCCESS =
              T.let(
                :success,
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol
              )
            PARTIAL_SUCCESS =
              T.let(
                :partial_success,
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Ordering strategy used
          module Strategy
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALWAYS =
              T.let(
                :always,
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy::TaggedSymbol
              )
            NEVER =
              T.let(
                :never,
                Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::InexplicitNumberOrderListResponse::Data::OrderingGroup::Strategy::TaggedSymbol
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
