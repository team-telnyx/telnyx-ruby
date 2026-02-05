# typed: strong

module Telnyx
  module Models
    class CallLeftQueueWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallLeftQueueWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallLeftQueue)) }
      attr_reader :data

      sig { params(data: Telnyx::CallLeftQueue::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallLeftQueue::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallLeftQueue }) }
      def to_hash
      end
    end
  end
end
