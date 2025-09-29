# typed: strong

module Telnyx
  module Models
    class DialogflowConfig < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DialogflowConfig, Telnyx::Internal::AnyHash)
        end

      # Enable sentiment analysis from Dialogflow.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :analyze_sentiment

      sig { params(analyze_sentiment: T::Boolean).void }
      attr_writer :analyze_sentiment

      # Enable partial automated agent reply from Dialogflow.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :partial_automated_agent_reply

      sig { params(partial_automated_agent_reply: T::Boolean).void }
      attr_writer :partial_automated_agent_reply

      sig do
        params(
          analyze_sentiment: T::Boolean,
          partial_automated_agent_reply: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Enable sentiment analysis from Dialogflow.
        analyze_sentiment: nil,
        # Enable partial automated agent reply from Dialogflow.
        partial_automated_agent_reply: nil
      )
      end

      sig do
        override.returns(
          {
            analyze_sentiment: T::Boolean,
            partial_automated_agent_reply: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
