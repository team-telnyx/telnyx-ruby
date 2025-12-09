# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class PhoneNumberAssignmentByProfileGetPhoneNumberStatusResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileGetPhoneNumberStatusResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileGetPhoneNumberStatusResponse::Record
            ]
          )
        end
        attr_accessor :records

        sig do
          params(
            records:
              T::Array[
                Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileGetPhoneNumberStatusResponse::Record::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(records:)
        end

        sig do
          override.returns(
            {
              records:
                T::Array[
                  Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileGetPhoneNumberStatusResponse::Record
                ]
            }
          )
        end
        def to_hash
        end

        class Record < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Number10dlc::PhoneNumberAssignmentByProfileGetPhoneNumberStatusResponse::Record,
                Telnyx::Internal::AnyHash
              )
            end

          # The phone number that the status is being checked for.
          sig { returns(String) }
          attr_accessor :phone_number

          # The status of the associated phone number assignment.
          sig { returns(String) }
          attr_accessor :status

          # The ID of the task associated with the phone number.
          sig { returns(String) }
          attr_accessor :task_id

          sig do
            params(
              phone_number: String,
              status: String,
              task_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The phone number that the status is being checked for.
            phone_number:,
            # The status of the associated phone number assignment.
            status:,
            # The ID of the task associated with the phone number.
            task_id:
          )
          end

          sig do
            override.returns(
              { phone_number: String, status: String, task_id: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
