# typed: strong

module Telnyx
  module Models
    class NumberOrderPhoneNumberUpdateRequirementGroupResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data,
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

        sig { returns(T.nilable(Time)) }
        attr_reader :deadline

        sig { params(deadline: Time).void }
        attr_writer :deadline

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_block_number

        sig { params(is_block_number: T::Boolean).void }
        attr_writer :is_block_number

        sig { returns(T.nilable(String)) }
        attr_reader :locality

        sig { params(locality: String).void }
        attr_writer :locality

        sig { returns(T.nilable(String)) }
        attr_reader :order_request_id

        sig { params(order_request_id: String).void }
        attr_writer :order_request_id

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
                Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement
              ]
            )
          )
        end
        attr_reader :regulatory_requirements

        sig do
          params(
            regulatory_requirements:
              T::Array[
                Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement::OrHash
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

        sig { returns(T.nilable(String)) }
        attr_reader :sub_number_order_id

        sig { params(sub_number_order_id: String).void }
        attr_writer :sub_number_order_id

        sig do
          params(
            id: String,
            bundle_id: T.nilable(String),
            country_code: String,
            deadline: Time,
            is_block_number: T::Boolean,
            locality: String,
            order_request_id: String,
            phone_number: String,
            phone_number_type: String,
            record_type: String,
            regulatory_requirements:
              T::Array[
                Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement::OrHash
              ],
            requirements_met: T::Boolean,
            requirements_status: String,
            status: String,
            sub_number_order_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          bundle_id: nil,
          country_code: nil,
          deadline: nil,
          is_block_number: nil,
          locality: nil,
          order_request_id: nil,
          phone_number: nil,
          phone_number_type: nil,
          record_type: nil,
          regulatory_requirements: nil,
          requirements_met: nil,
          requirements_status: nil,
          status: nil,
          sub_number_order_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              bundle_id: T.nilable(String),
              country_code: String,
              deadline: Time,
              is_block_number: T::Boolean,
              locality: String,
              order_request_id: String,
              phone_number: String,
              phone_number_type: String,
              record_type: String,
              regulatory_requirements:
                T::Array[
                  Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement
                ],
              requirements_met: T::Boolean,
              requirements_status: String,
              status: String,
              sub_number_order_id: String
            }
          )
        end
        def to_hash
        end

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement,
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
    end
  end
end
