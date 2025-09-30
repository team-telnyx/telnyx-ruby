# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderActivationSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute activation_status
      #   Activation status
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderActivationSettings::ActivationStatus, nil]
      optional :activation_status, enum: -> { Telnyx::PortingOrderActivationSettings::ActivationStatus }

      # @!attribute foc_datetime_actual
      #   ISO 8601 formatted Date/Time of the FOC date
      #
      #   @return [Time, nil]
      optional :foc_datetime_actual, Time

      # @!attribute foc_datetime_requested
      #   ISO 8601 formatted Date/Time requested for the FOC date
      #
      #   @return [Time, nil]
      optional :foc_datetime_requested, Time

      response_only do
        # @!attribute fast_port_eligible
        #   Indicates whether this porting order is eligible for FastPort
        #
        #   @return [Boolean, nil]
        optional :fast_port_eligible, Telnyx::Internal::Type::Boolean
      end

      # @!method initialize(activation_status: nil, fast_port_eligible: nil, foc_datetime_actual: nil, foc_datetime_requested: nil)
      #   @param activation_status [Symbol, Telnyx::Models::PortingOrderActivationSettings::ActivationStatus] Activation status
      #
      #   @param fast_port_eligible [Boolean] Indicates whether this porting order is eligible for FastPort
      #
      #   @param foc_datetime_actual [Time] ISO 8601 formatted Date/Time of the FOC date
      #
      #   @param foc_datetime_requested [Time] ISO 8601 formatted Date/Time requested for the FOC date

      # Activation status
      #
      # @see Telnyx::Models::PortingOrderActivationSettings#activation_status
      module ActivationStatus
        extend Telnyx::Internal::Type::Enum

        NEW = :New
        PENDING = :Pending
        CONFLICT = :Conflict
        CANCEL_PENDING = :"Cancel Pending"
        FAILED = :Failed
        CONCURRED = :Concurred
        ACTIVATE_RDY = :"Activate RDY"
        DISCONNECT_PENDING = :"Disconnect Pending"
        CONCURRENCE_SENT = :"Concurrence Sent"
        OLD = :Old
        SENDING = :Sending
        ACTIVE = :Active
        CANCELLED = :Cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
