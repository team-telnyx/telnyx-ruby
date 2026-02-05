# typed: strong

module Telnyx
  module Models
    class CallGatherEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallGatherEndedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallGatherEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::CallGatherEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallGatherEnded::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallGatherEnded }) }
      def to_hash
      end
    end
  end
end
