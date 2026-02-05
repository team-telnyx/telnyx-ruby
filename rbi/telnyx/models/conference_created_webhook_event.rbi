# typed: strong

module Telnyx
  module Models
    class ConferenceCreatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceCreatedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceCreated)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceCreated::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceCreated::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceCreated }) }
      def to_hash
      end
    end
  end
end
