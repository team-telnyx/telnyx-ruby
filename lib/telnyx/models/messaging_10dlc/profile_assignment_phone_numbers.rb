# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      class ProfileAssignmentPhoneNumbers < Telnyx::Internal::Type::BaseModel
        # @!attribute phone_number
        #   The phone number that the status is being checked for.
        #
        #   @return [String]
        required :phone_number, String, api_name: :phoneNumber

        # @!attribute status
        #   The status of the associated phone number assignment.
        #
        #   @return [String]
        required :status, String

        # @!attribute task_id
        #   The ID of the task associated with the phone number.
        #
        #   @return [String]
        required :task_id, String, api_name: :taskId

        # @!method initialize(phone_number:, status:, task_id:)
        #   @param phone_number [String] The phone number that the status is being checked for.
        #
        #   @param status [String] The status of the associated phone number assignment.
        #
        #   @param task_id [String] The ID of the task associated with the phone number.
      end
    end
  end
end
