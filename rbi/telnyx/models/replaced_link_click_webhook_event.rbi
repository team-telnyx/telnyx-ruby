# typed: strong

module Telnyx
  module Models
    class ReplacedLinkClickWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ReplacedLinkClickWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ReplacedLinkClick)) }
      attr_reader :data

      sig { params(data: Telnyx::ReplacedLinkClick::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ReplacedLinkClick::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ReplacedLinkClick }) }
      def to_hash
      end
    end
  end
end
