# typed: strong

module Telnyx
  module Models
    class SubNumberOrderUpdateRequirementGroupResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :customer_reference

        sig { params(customer_reference: String).void }
        attr_writer :customer_reference

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_block_sub_number_order

        sig { params(is_block_sub_number_order: T::Boolean).void }
        attr_writer :is_block_sub_number_order

        sig { returns(T.nilable(String)) }
        attr_reader :order_request_id

        sig { params(order_request_id: String).void }
        attr_writer :order_request_id

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number_type

        sig { params(phone_number_type: String).void }
        attr_writer :phone_number_type

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber
              ]
            )
          )
        end
        attr_reader :phone_numbers

        sig do
          params(
            phone_numbers:
              T::Array[
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::OrHash
              ]
          ).void
        end
        attr_writer :phone_numbers

        sig { returns(T.nilable(Integer)) }
        attr_reader :phone_numbers_count

        sig { params(phone_numbers_count: Integer).void }
        attr_writer :phone_numbers_count

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement
              ]
            )
          )
        end
        attr_reader :regulatory_requirements

        sig do
          params(
            regulatory_requirements:
              T::Array[
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement::OrHash
              ]
          ).void
        end
        attr_writer :regulatory_requirements

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :requirements_met

        sig { params(requirements_met: T::Boolean).void }
        attr_writer :requirements_met

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

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
            phone_number_type: String,
            phone_numbers:
              T::Array[
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::OrHash
              ],
            phone_numbers_count: Integer,
            record_type: String,
            regulatory_requirements:
              T::Array[
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement::OrHash
              ],
            requirements_met: T::Boolean,
            status: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          country_code: nil,
          created_at: nil,
          customer_reference: nil,
          is_block_sub_number_order: nil,
          order_request_id: nil,
          phone_number_type: nil,
          phone_numbers: nil,
          phone_numbers_count: nil,
          record_type: nil,
          regulatory_requirements: nil,
          requirements_met: nil,
          status: nil,
          updated_at: nil
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
              phone_number_type: String,
              phone_numbers:
                T::Array[
                  Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber
                ],
              phone_numbers_count: Integer,
              record_type: String,
              regulatory_requirements:
                T::Array[
                  Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement
                ],
              requirements_met: T::Boolean,
              status: String,
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
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :bundle_id

          sig { params(bundle_id: String).void }
          attr_writer :bundle_id

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
                  Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement
                ]
              )
            )
          end
          attr_reader :regulatory_requirements

          sig do
            params(
              regulatory_requirements:
                T::Array[
                  Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement::OrHash
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
              bundle_id: String,
              country_code: String,
              phone_number: String,
              phone_number_type: String,
              record_type: String,
              regulatory_requirements:
                T::Array[
                  Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement::OrHash
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
                bundle_id: String,
                country_code: String,
                phone_number: String,
                phone_number_type: String,
                record_type: String,
                regulatory_requirements:
                  T::Array[
                    Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement
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
                  Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :field_type

            sig { params(field_type: String).void }
            attr_writer :field_type

            sig { returns(T.nilable(String)) }
            attr_reader :field_value

            sig { params(field_value: String).void }
            attr_writer :field_value

            sig { returns(T.nilable(String)) }
            attr_reader :requirement_id

            sig { params(requirement_id: String).void }
            attr_writer :requirement_id

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig do
              params(
                field_type: String,
                field_value: String,
                requirement_id: String,
                status: String
              ).returns(T.attached_class)
            end
            def self.new(
              field_type: nil,
              field_value: nil,
              requirement_id: nil,
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  field_type: String,
                  field_value: String,
                  requirement_id: String,
                  status: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :field_type

          sig { params(field_type: String).void }
          attr_writer :field_type

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(String)) }
          attr_reader :requirement_id

          sig { params(requirement_id: String).void }
          attr_writer :requirement_id

          sig do
            params(
              field_type: String,
              record_type: String,
              requirement_id: String
            ).returns(T.attached_class)
          end
          def self.new(field_type: nil, record_type: nil, requirement_id: nil)
          end

          sig do
            override.returns(
              {
                field_type: String,
                record_type: String,
                requirement_id: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
