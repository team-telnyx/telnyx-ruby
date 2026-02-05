# typed: strong

module Telnyx
  module Models
    class CallReferCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallReferCompletedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallReferCompleted)) }
      attr_reader :data

      sig { params(data: Telnyx::CallReferCompleted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallReferCompleted::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallReferCompleted }) }
      def to_hash
      end
    end
  end
end
