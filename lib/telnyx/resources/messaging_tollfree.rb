# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingTollfree
      # @return [Telnyx::Resources::MessagingTollfree::Verification]
      attr_reader :verification

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @verification = Telnyx::Resources::MessagingTollfree::Verification.new(client: client)
      end
    end
  end
end
