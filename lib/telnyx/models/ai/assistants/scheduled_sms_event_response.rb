# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledSMSEventResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute assistant_id
          #
          #   @return [String]
          required :assistant_id, String

          # @!attribute scheduled_at_fixed_datetime
          #
          #   @return [Time]
          required :scheduled_at_fixed_datetime, Time

          # @!attribute telnyx_agent_target
          #
          #   @return [String]
          required :telnyx_agent_target, String

          # @!attribute telnyx_conversation_channel
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          required :telnyx_conversation_channel, enum: -> { Telnyx::AI::Assistants::ConversationChannelType }

          # @!attribute telnyx_end_user_target
          #
          #   @return [String]
          required :telnyx_end_user_target, String

          # @!attribute text
          #
          #   @return [String]
          required :text, String

          # @!attribute conversation_id
          #
          #   @return [String, nil]
          optional :conversation_id, String

          # @!attribute conversation_metadata
          #
          #   @return [Hash{Symbol=>String, Integer, Boolean}, nil]
          optional :conversation_metadata,
                   -> { Telnyx::Internal::Type::HashOf[union: Telnyx::AI::Assistants::ScheduledSMSEventResponse::ConversationMetadata] }

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute errors
          #
          #   @return [Array<String>, nil]
          optional :errors, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute retry_count
          #
          #   @return [Integer, nil]
          optional :retry_count, Integer

          # @!attribute scheduled_event_id
          #
          #   @return [String, nil]
          optional :scheduled_event_id, String

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::EventStatus, nil]
          optional :status, enum: -> { Telnyx::AI::Assistants::EventStatus }

          # @!method initialize(assistant_id:, scheduled_at_fixed_datetime:, telnyx_agent_target:, telnyx_conversation_channel:, telnyx_end_user_target:, text:, conversation_id: nil, conversation_metadata: nil, created_at: nil, errors: nil, retry_count: nil, scheduled_event_id: nil, status: nil)
          #   @param assistant_id [String]
          #   @param scheduled_at_fixed_datetime [Time]
          #   @param telnyx_agent_target [String]
          #   @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          #   @param telnyx_end_user_target [String]
          #   @param text [String]
          #   @param conversation_id [String]
          #   @param conversation_metadata [Hash{Symbol=>String, Integer, Boolean}]
          #   @param created_at [Time]
          #   @param errors [Array<String>]
          #   @param retry_count [Integer]
          #   @param scheduled_event_id [String]
          #   @param status [Symbol, Telnyx::Models::AI::Assistants::EventStatus]

          module ConversationMetadata
            extend Telnyx::Internal::Type::Union

            variant String

            variant Integer

            variant Telnyx::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Integer, Boolean)]
          end
        end
      end
    end
  end
end
