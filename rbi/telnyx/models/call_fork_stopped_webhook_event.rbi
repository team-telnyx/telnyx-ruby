# typed: strong

module Telnyx
  module Models
    class CallForkStoppedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallForkStoppedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallForkStopped)) }
      attr_reader :data

      sig { params(data: Telnyx::CallForkStopped::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallForkStopped::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallForkStopped }) }
      def to_hash
      end
    end
  end
end
