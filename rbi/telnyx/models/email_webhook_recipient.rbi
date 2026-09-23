# typed: strong

module Telnyx
  module Models
    class EmailWebhookRecipient < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailWebhookRecipient, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig do
        returns(T.nilable(Telnyx::EmailWebhookRecipient::Kind::TaggedSymbol))
      end
      attr_reader :kind

      sig { params(kind: Telnyx::EmailWebhookRecipient::Kind::OrSymbol).void }
      attr_writer :kind

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          email: String,
          kind: Telnyx::EmailWebhookRecipient::Kind::OrSymbol,
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(email:, kind: nil, name: nil)
      end

      sig do
        override.returns(
          {
            email: String,
            kind: Telnyx::EmailWebhookRecipient::Kind::TaggedSymbol,
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Kind
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailWebhookRecipient::Kind) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TO = T.let(:to, Telnyx::EmailWebhookRecipient::Kind::TaggedSymbol)
        CC = T.let(:cc, Telnyx::EmailWebhookRecipient::Kind::TaggedSymbol)
        BCC = T.let(:bcc, Telnyx::EmailWebhookRecipient::Kind::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::EmailWebhookRecipient::Kind::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
