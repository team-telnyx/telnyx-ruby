# frozen_string_literal: true

module Telnyx
  module Models
    class DynamicEmergencyEndpoint < Telnyx::Internal::Type::BaseModel
      # @!attribute callback_number
      #
      #   @return [String]
      required :callback_number, String

      # @!attribute caller_name
      #
      #   @return [String]
      required :caller_name, String

      # @!attribute dynamic_emergency_address_id
      #   An id of a currently active dynamic emergency location.
      #
      #   @return [String]
      required :dynamic_emergency_address_id, String

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date of when the resource was created
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute sip_from_id
        #
        #   @return [String, nil]
        optional :sip_from_id, String

        # @!attribute status
        #   Status of dynamic emergency address
        #
        #   @return [Symbol, Telnyx::Models::DynamicEmergencyEndpoint::Status, nil]
        optional :status, enum: -> { Telnyx::DynamicEmergencyEndpoint::Status }

        # @!attribute updated_at
        #   ISO 8601 formatted date of when the resource was last updated
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(callback_number:, caller_name:, dynamic_emergency_address_id:, id: nil, created_at: nil, record_type: nil, sip_from_id: nil, status: nil, updated_at: nil)
      #   @param callback_number [String]
      #
      #   @param caller_name [String]
      #
      #   @param dynamic_emergency_address_id [String] An id of a currently active dynamic emergency location.
      #
      #   @param id [String]
      #
      #   @param created_at [String] ISO 8601 formatted date of when the resource was created
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param sip_from_id [String]
      #
      #   @param status [Symbol, Telnyx::Models::DynamicEmergencyEndpoint::Status] Status of dynamic emergency address
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the resource was last updated

      # Status of dynamic emergency address
      #
      # @see Telnyx::Models::DynamicEmergencyEndpoint#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        ACTIVATED = :activated
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
