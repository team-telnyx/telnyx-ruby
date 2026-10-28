# typed: strong

module Telnyx
  module Models
    class Mm7Metadata < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Mm7Metadata, Telnyx::Internal::AnyHash) }

      # Failover webhook URL to receive inbound MM7 traffic
      sig { returns(T.nilable(String)) }
      attr_reader :mm7_failover_webhook_url

      sig { params(mm7_failover_webhook_url: String).void }
      attr_writer :mm7_failover_webhook_url

      # Webhook URL to receive inbound MM7 traffic
      sig { returns(T.nilable(String)) }
      attr_reader :mm7_webhook_url

      sig { params(mm7_webhook_url: String).void }
      attr_writer :mm7_webhook_url

      # MM7 settings for inbound messages
      sig do
        params(
          mm7_failover_webhook_url: String,
          mm7_webhook_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Failover webhook URL to receive inbound MM7 traffic
        mm7_failover_webhook_url: nil,
        # Webhook URL to receive inbound MM7 traffic
        mm7_webhook_url: nil
      )
      end

      sig do
        override.returns(
          { mm7_failover_webhook_url: String, mm7_webhook_url: String }
        )
      end
      def to_hash
      end
    end
  end
end
