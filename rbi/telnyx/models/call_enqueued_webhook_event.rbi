# typed: strong

module Telnyx
  module Models
    class CallEnqueuedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallEnqueuedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallEnqueued)) }
      attr_reader :data

      sig { params(data: Telnyx::CallEnqueued::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallEnqueued::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallEnqueued }) }
      def to_hash
      end
    end
  end
end
