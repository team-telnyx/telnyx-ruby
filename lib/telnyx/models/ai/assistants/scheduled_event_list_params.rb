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

          # @!attribute page
          #   Consolidated page parameter (deepObject style). Originally: page[size],
          #   page[number]
          #
          #   @return [Telnyx::Models::AI::Assistants::ScheduledEventListParams::Page, nil]
          optional :page, -> { Telnyx::AI::Assistants::ScheduledEventListParams::Page }

          # @!attribute to_date
          #
          #   @return [Time, nil]
          optional :to_date, Time

          # @!method initialize(conversation_channel: nil, from_date: nil, page: nil, to_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::ScheduledEventListParams} for more details.
          #
          #   @param conversation_channel [Symbol, Telnyx::Models::AI::Assistants::ConversationChannelType]
          #
          #   @param from_date [Time]
          #
          #   @param page [Telnyx::Models::AI::Assistants::ScheduledEventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
          #
          #   @param to_date [Time]
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Page < Telnyx::Internal::Type::BaseModel
            # @!attribute number
            #
            #   @return [Integer, nil]
            optional :number, Integer

            # @!attribute size
            #
            #   @return [Integer, nil]
            optional :size, Integer

            # @!method initialize(number: nil, size: nil)
            #   Consolidated page parameter (deepObject style). Originally: page[size],
            #   page[number]
            #
            #   @param number [Integer]
            #   @param size [Integer]
          end
        end
      end
    end
  end
end
