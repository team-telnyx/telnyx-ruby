# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      class TnUploadEntry < Telnyx::Internal::Type::BaseModel
        # @!attribute civic_address_id
        #   Identifies the civic address assigned to the phone number entry.
        #
        #   @return [String, nil]
        optional :civic_address_id, String

        # @!attribute error_code
        #   A code returned by Microsoft Teams if there is an error with the phone number
        #   entry upload.
        #
        #   @return [Symbol, Telnyx::Models::ExternalConnections::TnUploadEntry::ErrorCode, nil]
        optional :error_code, enum: -> { Telnyx::ExternalConnections::TnUploadEntry::ErrorCode }

        # @!attribute error_message
        #   A message returned by Microsoft Teams if there is an error with the upload
        #   process.
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!attribute internal_status
        #   Represents the status of the phone number entry upload on Telnyx.
        #
        #   @return [Symbol, Telnyx::Models::ExternalConnections::TnUploadEntry::InternalStatus, nil]
        optional :internal_status, enum: -> { Telnyx::ExternalConnections::TnUploadEntry::InternalStatus }

        # @!attribute location_id
        #   Identifies the location assigned to the phone number entry.
        #
        #   @return [String, nil]
        optional :location_id, String

        # @!attribute number_id
        #   Uniquely identifies the resource.
        #
        #   @return [String, nil]
        optional :number_id, String

        # @!attribute phone_number
        #   Phone number in E164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute status
        #   Represents the status of the phone number entry upload on Microsoft Teams.
        #
        #   @return [Symbol, Telnyx::Models::ExternalConnections::TnUploadEntry::Status, nil]
        optional :status, enum: -> { Telnyx::ExternalConnections::TnUploadEntry::Status }

        # @!method initialize(civic_address_id: nil, error_code: nil, error_message: nil, internal_status: nil, location_id: nil, number_id: nil, phone_number: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::TnUploadEntry} for more details.
        #
        #   @param civic_address_id [String] Identifies the civic address assigned to the phone number entry.
        #
        #   @param error_code [Symbol, Telnyx::Models::ExternalConnections::TnUploadEntry::ErrorCode] A code returned by Microsoft Teams if there is an error with the phone number en
        #
        #   @param error_message [String] A message returned by Microsoft Teams if there is an error with the upload proce
        #
        #   @param internal_status [Symbol, Telnyx::Models::ExternalConnections::TnUploadEntry::InternalStatus] Represents the status of the phone number entry upload on Telnyx.
        #
        #   @param location_id [String] Identifies the location assigned to the phone number entry.
        #
        #   @param number_id [String] Uniquely identifies the resource.
        #
        #   @param phone_number [String] Phone number in E164 format.
        #
        #   @param status [Symbol, Telnyx::Models::ExternalConnections::TnUploadEntry::Status] Represents the status of the phone number entry upload on Microsoft Teams.

        # A code returned by Microsoft Teams if there is an error with the phone number
        # entry upload.
        #
        # @see Telnyx::Models::ExternalConnections::TnUploadEntry#error_code
        module ErrorCode
          extend Telnyx::Internal::Type::Enum

          INTERNAL_ERROR = :internal_error
          UNABLE_TO_RETRIEVE_DEFAULT_LOCATION = :unable_to_retrieve_default_location
          UNKNOWN_COUNTRY_CODE = :unknown_country_code
          UNABLE_TO_RETRIEVE_LOCATION = :unable_to_retrieve_location
          UNABLE_TO_RETRIEVE_PARTNER_INFO = :unable_to_retrieve_partner_info
          UNABLE_TO_MATCH_GEOGRAPHY_ENTRY = :unable_to_match_geography_entry

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Represents the status of the phone number entry upload on Telnyx.
        #
        # @see Telnyx::Models::ExternalConnections::TnUploadEntry#internal_status
        module InternalStatus
          extend Telnyx::Internal::Type::Enum

          PENDING_ASSIGNMENT = :pending_assignment
          IN_PROGRESS = :in_progress
          ALL_INTERNAL_JOBS_COMPLETED = :all_internal_jobs_completed
          RELEASE_REQUESTED = :release_requested
          RELEASE_COMPLETED = :release_completed
          ERROR = :error

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Represents the status of the phone number entry upload on Microsoft Teams.
        #
        # @see Telnyx::Models::ExternalConnections::TnUploadEntry#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING_UPLOAD = :pending_upload
          PENDING = :pending
          IN_PROGRESS = :in_progress
          SUCCESS = :success
          ERROR = :error

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
