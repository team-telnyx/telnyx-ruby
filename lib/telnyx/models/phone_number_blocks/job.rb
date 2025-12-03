# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumberBlocks
      # @see Telnyx::Resources::PhoneNumberBlocks::Jobs#list
      class Job < Telnyx::Internal::Type::BaseModel
        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute etc
          #   ISO 8601 formatted date indicating when the estimated time of completion of the
          #   background job.
          #
          #   @return [Time, nil]
          optional :etc, Time

          # @!attribute failed_operations
          #
          #   @return [Array<Telnyx::Models::PhoneNumberBlocks::Job::FailedOperation>, nil]
          optional :failed_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberBlocks::Job::FailedOperation] }

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute status
          #   Indicates the completion status of the background operation.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumberBlocks::Job::Status, nil]
          optional :status, enum: -> { Telnyx::PhoneNumberBlocks::Job::Status }

          # @!attribute successful_operations
          #
          #   @return [Array<Telnyx::Models::PhoneNumberBlocks::Job::SuccessfulOperation>, nil]
          optional :successful_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberBlocks::Job::SuccessfulOperation] }

          # @!attribute type
          #   Identifies the type of the background job.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumberBlocks::Job::Type, nil]
          optional :type, enum: -> { Telnyx::PhoneNumberBlocks::Job::Type }

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, etc: nil, failed_operations: nil, record_type: nil, status: nil, successful_operations: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumberBlocks::Job} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param etc [Time] ISO 8601 formatted date indicating when the estimated time of completion of the
        #
        #   @param failed_operations [Array<Telnyx::Models::PhoneNumberBlocks::Job::FailedOperation>]
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param status [Symbol, Telnyx::Models::PhoneNumberBlocks::Job::Status] Indicates the completion status of the background operation.
        #
        #   @param successful_operations [Array<Telnyx::Models::PhoneNumberBlocks::Job::SuccessfulOperation>]
        #
        #   @param type [Symbol, Telnyx::Models::PhoneNumberBlocks::Job::Type] Identifies the type of the background job.
        #
        #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.

        class FailedOperation < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The phone number's ID
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute errors
          #
          #   @return [Array<Telnyx::Models::PhoneNumberBlocks::JobError>, nil]
          optional :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberBlocks::JobError] }

          # @!attribute phone_number
          #   The phone number in e164 format.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(id: nil, errors: nil, phone_number: nil)
          #   @param id [String] The phone number's ID
          #
          #   @param errors [Array<Telnyx::Models::PhoneNumberBlocks::JobError>]
          #
          #   @param phone_number [String] The phone number in e164 format.
        end

        # Indicates the completion status of the background operation.
        #
        # @see Telnyx::Models::PhoneNumberBlocks::Job#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          IN_PROGRESS = :in_progress
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class SuccessfulOperation < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The phone number's ID
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute phone_number
          #   The phone number in e164 format.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(id: nil, phone_number: nil)
          #   The phone numbers successfully updated.
          #
          #   @param id [String] The phone number's ID
          #
          #   @param phone_number [String] The phone number in e164 format.
        end

        # Identifies the type of the background job.
        #
        # @see Telnyx::Models::PhoneNumberBlocks::Job#type
        module Type
          extend Telnyx::Internal::Type::Enum

          DELETE_PHONE_NUMBER_BLOCK = :delete_phone_number_block

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
