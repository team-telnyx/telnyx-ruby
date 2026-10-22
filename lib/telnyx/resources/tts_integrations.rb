# frozen_string_literal: true

module Telnyx
  module Resources
    class TtsIntegrations
      # @return [Telnyx::Resources::TtsIntegrations::Actions]
      attr_reader :actions

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::TtsIntegrations::Actions.new(client: client)
      end
    end
  end
end
