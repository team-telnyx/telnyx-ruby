# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumberBlocks
      # @return [Telnyx::Resources::PhoneNumberBlocks::Jobs]
      attr_reader :jobs

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @jobs = Telnyx::Resources::PhoneNumberBlocks::Jobs.new(client: client)
      end
    end
  end
end
