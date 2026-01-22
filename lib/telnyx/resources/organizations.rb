# frozen_string_literal: true

module Telnyx
  module Resources
    class Organizations
      # @return [Telnyx::Resources::Organizations::Users]
      attr_reader :users

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @users = Telnyx::Resources::Organizations::Users.new(client: client)
      end
    end
  end
end
