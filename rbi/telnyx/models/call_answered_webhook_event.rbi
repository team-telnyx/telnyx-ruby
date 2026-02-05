# typed: strong

module Telnyx
  module Models
    class CallAnsweredWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallAnsweredWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallAnswered)) }
      attr_reader :data

      sig { params(data: Telnyx::CallAnswered::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallAnswered::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallAnswered }) }
      def to_hash
      end
    end
  end
end
