# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderMessaging < Telnyx::Internal::Type::BaseModel
      # @!attribute enable_messaging
      #   Indicates whether Telnyx will port messaging capabilities from the losing
      #   carrier. If false, any messaging capabilities will stay with their current
      #   provider.
      #
      #   @return [Boolean, nil]
      optional :enable_messaging, Telnyx::Internal::Type::Boolean

      # @!attribute messaging_capable
      #   Indicates whether the porting order can also port messaging capabilities.
      #
      #   @return [Boolean, nil]
      optional :messaging_capable, Telnyx::Internal::Type::Boolean

      # @!attribute messaging_port_completed
      #   Indicates whether the messaging porting has been completed.
      #
      #   @return [Boolean, nil]
      optional :messaging_port_completed, Telnyx::Internal::Type::Boolean

      # @!attribute messaging_port_status
      #   The current status of the messaging porting.
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderMessaging::MessagingPortStatus, nil]
      optional :messaging_port_status, enum: -> { Telnyx::PortingOrderMessaging::MessagingPortStatus }

      # @!method initialize(enable_messaging: nil, messaging_capable: nil, messaging_port_completed: nil, messaging_port_status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrderMessaging} for more details.
      #
      #   Information about messaging porting process.
      #
      #   @param enable_messaging [Boolean] Indicates whether Telnyx will port messaging capabilities from the losing carrie
      #
      #   @param messaging_capable [Boolean] Indicates whether the porting order can also port messaging capabilities.
      #
      #   @param messaging_port_completed [Boolean] Indicates whether the messaging porting has been completed.
      #
      #   @param messaging_port_status [Symbol, Telnyx::Models::PortingOrderMessaging::MessagingPortStatus] The current status of the messaging porting.

      # The current status of the messaging porting.
      #
      # @see Telnyx::Models::PortingOrderMessaging#messaging_port_status
      module MessagingPortStatus
        extend Telnyx::Internal::Type::Enum

        NOT_APPLICABLE = :not_applicable
        PENDING = :pending
        ACTIVATING = :activating
        EXCEPTION = :exception
        CANCELED = :canceled
        PARTIAL_PORT_COMPLETE = :partial_port_complete
        PORTED = :ported

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
