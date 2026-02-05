# typed: strong

module Telnyx
  module Models
    class CallBridgedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallBridgedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallBridged)) }
      attr_reader :data

      sig { params(data: Telnyx::CallBridged::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallBridged::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallBridged }) }
      def to_hash
      end
    end
  end
end
