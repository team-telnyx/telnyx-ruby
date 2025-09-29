# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#retrieve_conversations_insights
      class ConversationRetrieveConversationsInsightsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data>]
        required :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
        required :meta, -> { Telnyx::AI::Assistants::Tests::TestSuites::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data>]
        #   @param meta [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the conversation insight.
          #
          #   @return [String]
          required :id, String

          # @!attribute conversation_insights
          #   List of insights extracted from the conversation.
          #
          #   @return [Array<Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight>]
          required :conversation_insights,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight] }

          # @!attribute created_at
          #   Timestamp of when the object was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute status
          #   Current status of the insight generation for the conversation.
          #
          #   @return [Symbol, Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status]
          required :status,
                   enum: -> { Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status }

          # @!method initialize(id:, conversation_insights:, created_at:, status:)
          #   @param id [String] Unique identifier for the conversation insight.
          #
          #   @param conversation_insights [Array<Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight>] List of insights extracted from the conversation.
          #
          #   @param created_at [Time] Timestamp of when the object was created.
          #
          #   @param status [Symbol, Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::Status] Current status of the insight generation for the conversation.

          class ConversationInsight < Telnyx::Internal::Type::BaseModel
            # @!attribute insight_id
            #   Unique identifier for the insight configuration.
            #
            #   @return [String]
            required :insight_id, String

            # @!attribute result
            #   Insight result from the conversation. If the insight has a JSON schema, this
            #   will be stringified JSON object.
            #
            #   @return [String]
            required :result, String

            # @!method initialize(insight_id:, result:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data::ConversationInsight}
            #   for more details.
            #
            #   @param insight_id [String] Unique identifier for the insight configuration.
            #
            #   @param result [String] Insight result from the conversation. If the insight has a JSON schema, this wil
          end

          # Current status of the insight generation for the conversation.
          #
          # @see Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            IN_PROGRESS = :in_progress
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
