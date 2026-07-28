# typed: strong

module Telnyx
  module Models
    module EmailEventType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::EmailEventType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      QUEUED = T.let(:queued, Telnyx::EmailEventType::TaggedSymbol)
      DEFERRED = T.let(:deferred, Telnyx::EmailEventType::TaggedSymbol)
      SCHEDULED = T.let(:scheduled, Telnyx::EmailEventType::TaggedSymbol)
      CANCELLED = T.let(:cancelled, Telnyx::EmailEventType::TaggedSymbol)
      SANDBOX = T.let(:sandbox, Telnyx::EmailEventType::TaggedSymbol)
      SENDING = T.let(:sending, Telnyx::EmailEventType::TaggedSymbol)
      SENT = T.let(:sent, Telnyx::EmailEventType::TaggedSymbol)
      FAILED = T.let(:failed, Telnyx::EmailEventType::TaggedSymbol)
      DELIVERED = T.let(:delivered, Telnyx::EmailEventType::TaggedSymbol)
      BOUNCED = T.let(:bounced, Telnyx::EmailEventType::TaggedSymbol)
      COMPLAINED = T.let(:complained, Telnyx::EmailEventType::TaggedSymbol)
      REJECTED = T.let(:rejected, Telnyx::EmailEventType::TaggedSymbol)
      OPENED = T.let(:opened, Telnyx::EmailEventType::TaggedSymbol)
      CLICKED = T.let(:clicked, Telnyx::EmailEventType::TaggedSymbol)
      UNSUBSCRIBED = T.let(:unsubscribed, Telnyx::EmailEventType::TaggedSymbol)
      DAILY_LIMIT_EXCEEDED =
        T.let(:daily_limit_exceeded, Telnyx::EmailEventType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::EmailEventType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
