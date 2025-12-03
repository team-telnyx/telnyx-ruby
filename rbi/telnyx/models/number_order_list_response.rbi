# typed: strong

module Telnyx
  module Models
    class NumberOrderListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NumberOrderListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::NumberOrderListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::NumberOrderListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::NumberOrderListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::NumberOrderListResponse::Data],
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
              Telnyx::Models::NumberOrderListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the messaging profile associated with the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :billing_group_id

        sig { params(billing_group_id: String).void }
        attr_writer :billing_group_id

        # Identifies the connection associated with this phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # A customer reference string for customer look ups.
        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        # Identifies the messaging profile associated with the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::NumberOrderListResponse::Data::PhoneNumber
              ]
            )
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers:
              T::Array[
                Telnyx::Models::NumberOrderListResponse::Data::PhoneNumber::OrHash
              ]
          ).void
        end
        attr_writer :phone_numbers

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sub_number_orders_ids

        sig { params(sub_number_orders_ids: T::Array[String]).void }
        attr_writer :sub_number_orders_ids

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # An ISO 8901 datetime string denoting when the number order was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The count of phone numbers in the number order.
        sig { returns(T.nilable(Integer)) }
        attr_reader :phone_numbers_count

        sig { params(phone_numbers_count: Integer).void }
        attr_writer :phone_numbers_count

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # True if all requirements are met for every phone number, false otherwise.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :requirements_met

        sig { params(requirements_met: T::Boolean).void }
        attr_writer :requirements_met

        # The status of the order.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::NumberOrderListResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::NumberOrderListResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # An ISO 8901 datetime string for when the number order was updated.
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
            phone_numbers:
              T::Array[
                Telnyx::Models::NumberOrderListResponse::Data::PhoneNumber::OrHash
              ],
            phone_numbers_count: Integer,
            record_type: String,
            requirements_met: T::Boolean,
            status:
              Telnyx::Models::NumberOrderListResponse::Data::Status::OrSymbol,
            sub_number_orders_ids: T::Array[String],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # Identifies the messaging profile associated with the phone number.
          billing_group_id: nil,
          # Identifies the connection associated with this phone number.
          connection_id: nil,
          # An ISO 8901 datetime string denoting when the number order was created.
          created_at: nil,
          # A customer reference string for customer look ups.
          customer_reference: nil,
          # Identifies the messaging profile associated with the phone number.
          messaging_profile_id: nil,
          phone_numbers: nil,
          # The count of phone numbers in the number order.
          phone_numbers_count: nil,
          record_type: nil,
          # True if all requirements are met for every phone number, false otherwise.
          requirements_met: nil,
          # The status of the order.
          status: nil,
          sub_number_orders_ids: nil,
          # An ISO 8901 datetime string for when the number order was updated.
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
              phone_numbers:
                T::Array[
                  Telnyx::Models::NumberOrderListResponse::Data::PhoneNumber
                ],
              phone_numbers_count: Integer,
              record_type: String,
              requirements_met: T::Boolean,
              status:
                Telnyx::Models::NumberOrderListResponse::Data::Status::TaggedSymbol,
              sub_number_orders_ids: T::Array[String],
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::NumberOrderListResponse::Data::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number's ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The phone number in e164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The unique phone numbers given as arguments in the job creation.
          sig do
            params(id: String, phone_number: String).returns(T.attached_class)
          end
          def self.new(
            # The phone number's ID
            id: nil,
            # The phone number in e164 format.
            phone_number: nil
          )
          end

          sig { override.returns({ id: String, phone_number: String }) }
          def to_hash
          end
        end

        # The status of the order.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::NumberOrderListResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Models::NumberOrderListResponse::Data::Status::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :success,
              Telnyx::Models::NumberOrderListResponse::Data::Status::TaggedSymbol
            )
          FAILURE =
            T.let(
              :failure,
              Telnyx::Models::NumberOrderListResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::NumberOrderListResponse::Data::Status::TaggedSymbol
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
