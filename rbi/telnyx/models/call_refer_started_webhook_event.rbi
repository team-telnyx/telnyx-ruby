# typed: strong

module Telnyx
  module Models
    class CallReferStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallReferStartedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallReferStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::CallReferStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallReferStarted::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallReferStarted }) }
      def to_hash
      end
    end
  end
end
