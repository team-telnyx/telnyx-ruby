# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::ScheduledEvents#create
        class ScheduledEventCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute scheduled_at_fixed_datetime
          #   The datetime at which the event should be scheduled. Formatted as ISO 8601.
          #
          #   @return [Time]
          required :scheduled_at_fixed_datetime, Time

          # @!attribute telnyx_agent_target
          #   The phone number, SIP URI, to schedule the call or text from.
          #
          #   @return [String]
          required :telnyx_agent_target, String

          # @!attribute telnyx_conversation_channel
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          required :telnyx_conversation_channel, enum: -> { Telnyx::AI::Assistants::ConversationChannelType }

          # @!attribute telnyx_end_user_target
          #   The phone number, SIP URI, to schedule the call or text to.
          #
          #   @return [String]
          required :telnyx_end_user_target, String

          # @!attribute conversation_metadata
          #   Metadata associated with the conversation. Telnyx provides several pieces of
          #   metadata, but customers can also add their own.
          #
          #   @return [Hash{Symbol=>String, Integer, Boolean}, nil]
          optional :conversation_metadata,
                   -> { Telnyx::Internal::Type::HashOf[union: Telnyx::AI::Assistants::ScheduledEventCreateParams::ConversationMetadata] }

          # @!attribute dynamic_variables
          #   A map of dynamic variable names to values. These variables can be referenced in
          #   the assistant's instructions and messages using {{variable_name}} syntax.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :dynamic_variables, Telnyx::Internal::Type::HashOf[String]

          # @!attribute text
          #   Required for sms scheduled events. The text to be sent to the end user.
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(scheduled_at_fixed_datetime:, telnyx_agent_target:, telnyx_conversation_channel:, telnyx_end_user_target:, conversation_metadata: nil, dynamic_variables: nil, text: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::ScheduledEventCreateParams} for more details.
          #
          #   @param scheduled_at_fixed_datetime [Time] The datetime at which the event should be scheduled. Formatted as ISO 8601.
          #
          #   @param telnyx_agent_target [String] The phone number, SIP URI, to schedule the call or text from.
          #
          #   @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          #
          #   @param telnyx_end_user_target [String] The phone number, SIP URI, to schedule the call or text to.
          #
          #   @param conversation_metadata [Hash{Symbol=>String, Integer, Boolean}] Metadata associated with the conversation. Telnyx provides several pieces of met
          #
          #   @param dynamic_variables [Hash{Symbol=>String}] A map of dynamic variable names to values. These variables can be referenced in
          #
          #   @param text [String] Required for sms scheduled events. The text to be sent to the end user.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
