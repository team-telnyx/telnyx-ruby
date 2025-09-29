# typed: strong

module Telnyx
  module Models
    class NumberHealthMetrics < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberHealthMetrics, Telnyx::Internal::AnyHash)
        end

      # The ratio of messages received to the number of messages sent.
      sig { returns(Float) }
      attr_accessor :inbound_outbound_ratio

      # The number of messages analyzed for the health metrics.
      sig { returns(Integer) }
      attr_accessor :message_count

      # The ratio of messages blocked for spam to the number of messages attempted.
      sig { returns(Float) }
      attr_accessor :spam_ratio

      # The ratio of messages sucessfully delivered to the number of messages attempted.
      sig { returns(Float) }
      attr_accessor :success_ratio

      # High level health metrics about the number and it's messaging sending patterns.
      sig do
        params(
          inbound_outbound_ratio: Float,
          message_count: Integer,
          spam_ratio: Float,
          success_ratio: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # The ratio of messages received to the number of messages sent.
        inbound_outbound_ratio:,
        # The number of messages analyzed for the health metrics.
        message_count:,
        # The ratio of messages blocked for spam to the number of messages attempted.
        spam_ratio:,
        # The ratio of messages sucessfully delivered to the number of messages attempted.
        success_ratio:
      )
      end

      sig do
        override.returns(
          {
            inbound_outbound_ratio: Float,
            message_count: Integer,
            spam_ratio: Float,
            success_ratio: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
