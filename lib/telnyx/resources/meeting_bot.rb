# frozen_string_literal: true

module Telnyx
  module Resources
    class MeetingBot
      # Connect calendars and manage automatic meeting joins.
      # @return [Telnyx::Resources::MeetingBot::Calendar]
      attr_reader :calendar

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @calendar = Telnyx::Resources::MeetingBot::Calendar.new(client: client)
      end
    end
  end
end
