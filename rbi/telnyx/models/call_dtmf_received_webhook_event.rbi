# typed: strong

module Telnyx
  module Models
    class CallDtmfReceivedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallDtmfReceivedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallDtmfReceived)) }
      attr_reader :data

      sig { params(data: Telnyx::CallDtmfReceived::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallDtmfReceived::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallDtmfReceived }) }
      def to_hash
      end
    end
  end
end
