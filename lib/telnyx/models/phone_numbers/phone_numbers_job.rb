# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Jobs#list
      class PhoneNumbersJob < Telnyx::Internal::Type::BaseModel
        # @!attribute phone_numbers
        #
        #   @return [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::PhoneNumber>, nil]
        optional :phone_numbers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::PhoneNumber] }

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
          #   @return [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::FailedOperation>, nil]
          optional :failed_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::FailedOperation] }

          # @!attribute pending_operations
          #
          #   @return [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::PendingOperation>, nil]
          optional :pending_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::PendingOperation] }

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute status
          #   Indicates the completion status of the background update.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumbersJob::Status, nil]
          optional :status, enum: -> { Telnyx::PhoneNumbers::PhoneNumbersJob::Status }

          # @!attribute successful_operations
          #
          #   @return [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation>, nil]
          optional :successful_operations,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation] }

          # @!attribute type
          #   Identifies the type of the background job.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumbersJob::Type, nil]
          optional :type, enum: -> { Telnyx::PhoneNumbers::PhoneNumbersJob::Type }

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, etc: nil, failed_operations: nil, pending_operations: nil, phone_numbers: nil, record_type: nil, status: nil, successful_operations: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::PhoneNumbersJob} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param etc [Time] ISO 8601 formatted date indicating when the estimated time of completion of the
        #
        #   @param failed_operations [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::FailedOperation>]
        #
        #   @param pending_operations [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::PendingOperation>]
        #
        #   @param phone_numbers [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::PhoneNumber>]
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param status [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumbersJob::Status] Indicates the completion status of the background update.
        #
        #   @param successful_operations [Array<Telnyx::Models::PhoneNumbers::PhoneNumbersJob::SuccessfulOperation>]
        #
        #   @param type [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumbersJob::Type] Identifies the type of the background job.
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

        class PendingOperation < Telnyx::Internal::Type::BaseModel
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
          #   The phone numbers pending confirmation on update results. Entries in this list
          #   are transient, and will be moved to either successful_operations or
          #   failed_operations once the processing is done.
          #
          #   @param id [String] The phone number's ID
          #
          #   @param phone_number [String] The phone number in e164 format.
        end

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
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
          #   The unique phone numbers given as arguments in the job creation.
          #
          #   @param id [String] The phone number's ID
          #
          #   @param phone_number [String] The phone number in e164 format.
        end

        # Indicates the completion status of the background update.
        #
        # @see Telnyx::Models::PhoneNumbers::PhoneNumbersJob#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          IN_PROGRESS = :in_progress
          COMPLETED = :completed
          FAILED = :failed
          EXPIRED = :expired

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
        # @see Telnyx::Models::PhoneNumbers::PhoneNumbersJob#type
        module Type
          extend Telnyx::Internal::Type::Enum

          UPDATE_EMERGENCY_SETTINGS = :update_emergency_settings
          DELETE_PHONE_NUMBERS = :delete_phone_numbers
          UPDATE_PHONE_NUMBERS = :update_phone_numbers

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PhoneNumbersJob = PhoneNumbers::PhoneNumbersJob
  end
end
