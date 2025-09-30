# frozen_string_literal: true

module Telnyx
  module Models
    class DialogflowConfig < Telnyx::Internal::Type::BaseModel
      # @!attribute analyze_sentiment
      #   Enable sentiment analysis from Dialogflow.
      #
      #   @return [Boolean, nil]
      optional :analyze_sentiment, Telnyx::Internal::Type::Boolean

      # @!attribute partial_automated_agent_reply
      #   Enable partial automated agent reply from Dialogflow.
      #
      #   @return [Boolean, nil]
      optional :partial_automated_agent_reply, Telnyx::Internal::Type::Boolean

      # @!method initialize(analyze_sentiment: nil, partial_automated_agent_reply: nil)
      #   @param analyze_sentiment [Boolean] Enable sentiment analysis from Dialogflow.
      #
      #   @param partial_automated_agent_reply [Boolean] Enable partial automated agent reply from Dialogflow.
    end
  end
end
