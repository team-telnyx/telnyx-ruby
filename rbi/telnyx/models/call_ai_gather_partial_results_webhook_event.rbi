# typed: strong

module Telnyx
  module Models
    class CallAIGatherPartialResultsWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallAIGatherPartialResultsWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallAIGatherPartialResults)) }
      attr_reader :data

      sig { params(data: Telnyx::CallAIGatherPartialResults::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallAIGatherPartialResults::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallAIGatherPartialResults }) }
      def to_hash
      end
    end
  end
end
