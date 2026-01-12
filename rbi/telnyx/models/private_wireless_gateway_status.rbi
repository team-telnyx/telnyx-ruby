# typed: strong

module Telnyx
  module Models
    class PrivateWirelessGatewayStatus < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PrivateWirelessGatewayStatus, Telnyx::Internal::AnyHash)
        end

      # This attribute is an [error code](https://developers.telnyx.com/api/errors)
      # related to the failure reason.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_code

      # This attribute provides a human-readable explanation of why a failure happened.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_description

      # The current status or failure details of the Private Wireless Gateway. <ul>
      #
      #  <li><code>provisioning</code> - the Private Wireless Gateway is being provisioned.</li>
      #  <li><code>provisioned</code> - the Private Wireless Gateway was provisioned and able to receive connections.</li>
      #  <li><code>failed</code> - the provisioning had failed for a reason and it requires an intervention.</li>
      #  <li><code>decommissioning</code> - the Private Wireless Gateway is being removed from the network.</li>
      #  </ul>
      #  Transitioning between the provisioning and provisioned states may take some time.
      sig do
        returns(
          T.nilable(Telnyx::PrivateWirelessGatewayStatus::Value::TaggedSymbol)
        )
      end
      attr_reader :value

      sig do
        params(
          value: Telnyx::PrivateWirelessGatewayStatus::Value::OrSymbol
        ).void
      end
      attr_writer :value

      # The current status or failure details of the Private Wireless Gateway.
      sig do
        params(
          error_code: T.nilable(String),
          error_description: T.nilable(String),
          value: Telnyx::PrivateWirelessGatewayStatus::Value::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # This attribute is an [error code](https://developers.telnyx.com/api/errors)
        # related to the failure reason.
        error_code: nil,
        # This attribute provides a human-readable explanation of why a failure happened.
        error_description: nil,
        # The current status or failure details of the Private Wireless Gateway. <ul>
        #
        #  <li><code>provisioning</code> - the Private Wireless Gateway is being provisioned.</li>
        #  <li><code>provisioned</code> - the Private Wireless Gateway was provisioned and able to receive connections.</li>
        #  <li><code>failed</code> - the provisioning had failed for a reason and it requires an intervention.</li>
        #  <li><code>decommissioning</code> - the Private Wireless Gateway is being removed from the network.</li>
        #  </ul>
        #  Transitioning between the provisioning and provisioned states may take some time.
        value: nil
      )
      end

      sig do
        override.returns(
          {
            error_code: T.nilable(String),
            error_description: T.nilable(String),
            value: Telnyx::PrivateWirelessGatewayStatus::Value::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The current status or failure details of the Private Wireless Gateway. <ul>
      #
      #  <li><code>provisioning</code> - the Private Wireless Gateway is being provisioned.</li>
      #  <li><code>provisioned</code> - the Private Wireless Gateway was provisioned and able to receive connections.</li>
      #  <li><code>failed</code> - the provisioning had failed for a reason and it requires an intervention.</li>
      #  <li><code>decommissioning</code> - the Private Wireless Gateway is being removed from the network.</li>
      #  </ul>
      #  Transitioning between the provisioning and provisioned states may take some time.
      module Value
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PrivateWirelessGatewayStatus::Value)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROVISIONING =
          T.let(
            :provisioning,
            Telnyx::PrivateWirelessGatewayStatus::Value::TaggedSymbol
          )
        PROVISIONED =
          T.let(
            :provisioned,
            Telnyx::PrivateWirelessGatewayStatus::Value::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::PrivateWirelessGatewayStatus::Value::TaggedSymbol
          )
        DECOMMISSIONING =
          T.let(
            :decommissioning,
            Telnyx::PrivateWirelessGatewayStatus::Value::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PrivateWirelessGatewayStatus::Value::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
