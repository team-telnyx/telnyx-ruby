# frozen_string_literal: true

module Telnyx
  module Models
    # Activation status
    module PortingOrderActivationStatus
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
