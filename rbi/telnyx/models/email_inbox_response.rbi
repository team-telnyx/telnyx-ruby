# typed: strong

module Telnyx
  module Models
    class EmailInboxResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailInboxResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::EmailInbox) }
      attr_reader :data

      sig { params(data: Telnyx::EmailInbox::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::EmailInbox::OrHash).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::EmailInbox }) }
      def to_hash
      end
    end
  end
end
