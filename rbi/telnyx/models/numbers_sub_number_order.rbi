# typed: strong

module Telnyx
  module Models
    class NumbersSubNumberOrder < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumbersSubNumberOrder, Telnyx::Internal::AnyHash)
        end

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig do
        returns(
          T.nilable(
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      sig do
        returns(
          T.nilable(T::Array[Telnyx::SubNumberOrderRegulatoryRequirement])
        )
      end
      attr_reader :regulatory_requirements

      sig do
        params(
          regulatory_requirements:
            T::Array[Telnyx::SubNumberOrderRegulatoryRequirement::OrHash]
        ).void
      end
      attr_writer :regulatory_requirements

      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # An ISO 8901 datetime string denoting when the number order was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # True if the sub number order is a block sub number order
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_block_sub_number_order

      sig { params(is_block_sub_number_order: T::Boolean).void }
      attr_writer :is_block_sub_number_order

      sig { returns(T.nilable(String)) }
      attr_reader :order_request_id

      sig { params(order_request_id: String).void }
      attr_writer :order_request_id

      # The first 50 phone numbers in the sub number order, including their per-number
      # regulatory requirement statuses. Only present when
      # filter[include_phone_numbers]=true is used.
      sig do
        returns(T.nilable(T::Array[Telnyx::NumbersSubNumberOrder::PhoneNumber]))
      end
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers:
            T::Array[Telnyx::NumbersSubNumberOrder::PhoneNumber::OrHash]
        ).void
      end
      attr_writer :phone_numbers

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
        returns(T.nilable(Telnyx::NumbersSubNumberOrder::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::NumbersSubNumberOrder::Status::OrSymbol).void
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
          country_code: String,
          created_at: Time,
          customer_reference: String,
          is_block_sub_number_order: T::Boolean,
          order_request_id: String,
          phone_number_type:
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::OrSymbol,
          phone_numbers:
            T::Array[Telnyx::NumbersSubNumberOrder::PhoneNumber::OrHash],
          phone_numbers_count: Integer,
          record_type: String,
          regulatory_requirements:
            T::Array[Telnyx::SubNumberOrderRegulatoryRequirement::OrHash],
          requirements_met: T::Boolean,
          status: Telnyx::NumbersSubNumberOrder::Status::OrSymbol,
          updated_at: Time,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        country_code: nil,
        # An ISO 8901 datetime string denoting when the number order was created.
        created_at: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # True if the sub number order is a block sub number order
        is_block_sub_number_order: nil,
        order_request_id: nil,
        phone_number_type: nil,
        # The first 50 phone numbers in the sub number order, including their per-number
        # regulatory requirement statuses. Only present when
        # filter[include_phone_numbers]=true is used.
        phone_numbers: nil,
        # The count of phone numbers in the number order.
        phone_numbers_count: nil,
        record_type: nil,
        regulatory_requirements: nil,
        # True if all requirements are met for every phone number, false otherwise.
        requirements_met: nil,
        # The status of the order.
        status: nil,
        # An ISO 8901 datetime string for when the number order was updated.
        updated_at: nil,
        user_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            country_code: String,
            created_at: Time,
            customer_reference: String,
            is_block_sub_number_order: T::Boolean,
            order_request_id: String,
            phone_number_type:
              Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol,
            phone_numbers: T::Array[Telnyx::NumbersSubNumberOrder::PhoneNumber],
            phone_numbers_count: Integer,
            record_type: String,
            regulatory_requirements:
              T::Array[Telnyx::SubNumberOrderRegulatoryRequirement],
            requirements_met: T::Boolean,
            status: Telnyx::NumbersSubNumberOrder::Status::TaggedSymbol,
            updated_at: Time,
            user_id: String
          }
        )
      end
      def to_hash
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::NumbersSubNumberOrder::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        LANDLINE =
          T.let(
            :landline,
            Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::NumbersSubNumberOrder::PhoneNumberType::TaggedSymbol
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
              Telnyx::NumbersSubNumberOrder::PhoneNumber,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_accessor :bundle_id

        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number_type

        sig { params(phone_number_type: String).void }
        attr_writer :phone_number_type

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement
              ]
            )
          )
        end
        attr_reader :regulatory_requirements

        sig do
          params(
            regulatory_requirements:
              T::Array[
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::OrHash
              ]
          ).void
        end
        attr_writer :regulatory_requirements

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :requirements_met

        sig { params(requirements_met: T::Boolean).void }
        attr_writer :requirements_met

        sig { returns(T.nilable(String)) }
        attr_reader :requirements_status

        sig { params(requirements_status: String).void }
        attr_writer :requirements_status

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            id: String,
            bundle_id: T.nilable(String),
            country_code: String,
            phone_number: String,
            phone_number_type: String,
            record_type: String,
            regulatory_requirements:
              T::Array[
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::OrHash
              ],
            requirements_met: T::Boolean,
            requirements_status: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          bundle_id: nil,
          country_code: nil,
          phone_number: nil,
          phone_number_type: nil,
          record_type: nil,
          regulatory_requirements: nil,
          requirements_met: nil,
          requirements_status: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              bundle_id: T.nilable(String),
              country_code: String,
              phone_number: String,
              phone_number_type: String,
              record_type: String,
              regulatory_requirements:
                T::Array[
                  Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement
                ],
              requirements_met: T::Boolean,
              requirements_status: String,
              status: String
            }
          )
        end
        def to_hash
        end

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement,
                Telnyx::Internal::AnyHash
              )
            end

          # The value of the requirement, this could be an id to a resource or a string
          # value.
          sig { returns(T.nilable(String)) }
          attr_reader :field_value

          sig { params(field_value: String).void }
          attr_writer :field_value

          # Unique id for a requirement.
          sig { returns(T.nilable(String)) }
          attr_reader :requirement_id

          sig { params(requirement_id: String).void }
          attr_writer :requirement_id

          sig do
            returns(
              T.nilable(
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
              )
            )
          end
          attr_reader :field_type

          sig do
            params(
              field_type:
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::OrSymbol
            ).void
          end
          attr_writer :field_type

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # The status of the regulatory requirement for this phone number.
          sig do
            returns(
              T.nilable(
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              field_type:
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::OrSymbol,
              field_value: String,
              record_type: String,
              requirement_id: String,
              status:
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            field_type: nil,
            # The value of the requirement, this could be an id to a resource or a string
            # value.
            field_value: nil,
            record_type: nil,
            # Unique id for a requirement.
            requirement_id: nil,
            # The status of the regulatory requirement for this phone number.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                field_type:
                  Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol,
                field_value: String,
                record_type: String,
                requirement_id: String,
                status:
                  Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module FieldType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TEXTUAL =
              T.let(
                :textual,
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
              )
            DATETIME =
              T.let(
                :datetime,
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
              )
            ADDRESS =
              T.let(
                :address,
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
              )
            DOCUMENT =
              T.let(
                :document,
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::FieldType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The status of the regulatory requirement for this phone number.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :approved,
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::TaggedSymbol
              )
            DECLINED =
              T.let(
                :declined,
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::TaggedSymbol
              )
            AWAITING_VALUE =
              T.let(
                :"awaiting-value",
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::TaggedSymbol
              )
            PENDING_APPROVAL =
              T.let(
                :"pending-approval",
                Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumbersSubNumberOrder::PhoneNumber::RegulatoryRequirement::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # The status of the order.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NumbersSubNumberOrder::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::NumbersSubNumberOrder::Status::TaggedSymbol)
        SUCCESS =
          T.let(:success, Telnyx::NumbersSubNumberOrder::Status::TaggedSymbol)
        FAILURE =
          T.let(:failure, Telnyx::NumbersSubNumberOrder::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::NumbersSubNumberOrder::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
