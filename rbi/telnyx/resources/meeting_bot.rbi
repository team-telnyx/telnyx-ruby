# typed: strong

module Telnyx
  module Resources
    class MeetingBot
      # Connect calendars and manage automatic meeting joins.
      sig { returns(Telnyx::Resources::MeetingBot::Calendar) }
      attr_reader :calendar

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
