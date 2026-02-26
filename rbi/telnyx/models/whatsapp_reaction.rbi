# typed: strong

module Telnyx
  module Models
    class WhatsappReaction < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappReaction, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :emoji

      sig { params(emoji: String).void }
      attr_writer :emoji

      sig { returns(T.nilable(String)) }
      attr_reader :message_id

      sig { params(message_id: String).void }
      attr_writer :message_id

      sig do
        params(emoji: String, message_id: String).returns(T.attached_class)
      end
      def self.new(emoji: nil, message_id: nil)
      end

      sig { override.returns({ emoji: String, message_id: String }) }
      def to_hash
      end
    end
  end
end
