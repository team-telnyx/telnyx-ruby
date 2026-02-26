# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      class ProfileAssignmentPhoneNumbers < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Messaging10dlc::ProfileAssignmentPhoneNumbers,
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
          params(phone_number: String, status: String, task_id: String).returns(
            T.attached_class
          )
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
