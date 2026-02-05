# typed: strong

module Telnyx
  module Models
    class CallForkStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallForkStartedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallForkStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::CallForkStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallForkStarted::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallForkStarted }) }
      def to_hash
      end
    end
  end
end
