# typed: strong

module Telnyx
  module Models
    class ConferenceEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ConferenceEndedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::ConferenceEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceEnded::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceEnded }) }
      def to_hash
      end
    end
  end
end
