# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderActivationSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute activation_status
      #   Activation status
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderActivationStatus, nil]
      optional :activation_status, enum: -> { Telnyx::PortingOrderActivationStatus }, nil?: true

      # @!attribute foc_datetime_actual
      #   ISO 8601 formatted Date/Time of the FOC date
      #
      #   @return [Time, nil]
      optional :foc_datetime_actual, Time, nil?: true

      # @!attribute foc_datetime_requested
      #   ISO 8601 formatted Date/Time requested for the FOC date
      #
      #   @return [Time, nil]
      optional :foc_datetime_requested, Time, nil?: true

      response_only do
        # @!attribute fast_port_eligible
        #   Indicates whether this porting order is eligible for FastPort
        #
        #   @return [Boolean, nil]
        optional :fast_port_eligible, Telnyx::Internal::Type::Boolean
      end

      # @!method initialize(activation_status: nil, fast_port_eligible: nil, foc_datetime_actual: nil, foc_datetime_requested: nil)
      #   @param activation_status [Symbol, Telnyx::Models::PortingOrderActivationStatus, nil] Activation status
      #
      #   @param fast_port_eligible [Boolean] Indicates whether this porting order is eligible for FastPort
      #
      #   @param foc_datetime_actual [Time, nil] ISO 8601 formatted Date/Time of the FOC date
      #
      #   @param foc_datetime_requested [Time, nil] ISO 8601 formatted Date/Time requested for the FOC date
    end
  end
end
