# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::ScheduledEvents#list
        class ScheduledEventListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute conversation_channel
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType, nil]
          optional :conversation_channel, enum: -> { Telnyx::AI::Assistants::ConversationChannelType }

          # @!attribute from_date
          #
          #   @return [Time, nil]
          optional :from_date, Time

          # @!attribute page_number
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute to_date
          #
          #   @return [Time, nil]
          optional :to_date, Time

          # @!method initialize(conversation_channel: nil, from_date: nil, page_number: nil, page_size: nil, to_date: nil, request_options: {})
          #   @param conversation_channel [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          #   @param from_date [Time]
          #   @param page_number [Integer]
          #   @param page_size [Integer]
          #   @param to_date [Time]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
