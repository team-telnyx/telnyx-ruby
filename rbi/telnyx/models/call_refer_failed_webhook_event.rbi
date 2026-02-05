# typed: strong

module Telnyx
  module Models
    class CallReferFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallReferFailedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallReferFailed)) }
      attr_reader :data

      sig { params(data: Telnyx::CallReferFailed::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallReferFailed::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallReferFailed }) }
      def to_hash
      end
    end
  end
end
