# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#update
    class MeetingSessionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute bot_name
      #   Updated display name for the bot.
      #
      #   @return [String, nil]
      optional :bot_name, String

      # @!attribute join_at
      #   ISO-8601 timestamp for the bot to join. May be updated to reschedule.
      #
      #   @return [Time, nil]
      optional :join_at, Time

      # @!method initialize(id:, bot_name: nil, join_at: nil, request_options: {})
      #   @param id [String]
      #
      #   @param bot_name [String] Updated display name for the bot.
      #
      #   @param join_at [Time] ISO-8601 timestamp for the bot to join. May be updated to reschedule.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
