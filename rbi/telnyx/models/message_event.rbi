# typed: strong

module Telnyx
  module Models
    class MessageEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::MessageEvent, Telnyx::Internal::AnyHash) }

      sig { returns(Time) }
      attr_accessor :occurred_at

      sig { returns(Telnyx::EmailEventType::TaggedSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :payload

      sig { params(payload: T::Hash[Symbol, T.anything]).void }
      attr_writer :payload

      sig do
        params(
          occurred_at: Time,
          type: Telnyx::EmailEventType::OrSymbol,
          payload: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(occurred_at:, type:, payload: nil)
      end

      sig do
        override.returns(
          {
            occurred_at: Time,
            type: Telnyx::EmailEventType::TaggedSymbol,
            payload: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
