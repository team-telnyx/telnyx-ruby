# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::PhoneNumberAssignmentByProfile#retrieve_status
      class PhoneNumberAssignmentByProfileRetrieveStatusResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute status
        #   An enumeration.
        #
        #   @return [Symbol, Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrieveStatusResponse::Status]
        required :status,
                 enum: -> { Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrieveStatusResponse::Status }

        # @!attribute task_id
        #
        #   @return [String]
        required :task_id, String, api_name: :taskId

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(status:, task_id:, created_at: nil, updated_at: nil)
        #   @param status [Symbol, Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrieveStatusResponse::Status] An enumeration.
        #
        #   @param task_id [String]
        #
        #   @param created_at [Time]
        #
        #   @param updated_at [Time]

        # An enumeration.
        #
        # @see Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrieveStatusResponse#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          PROCESSING = :processing
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
