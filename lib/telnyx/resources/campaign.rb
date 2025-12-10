# frozen_string_literal: true

module Telnyx
  module Resources
    class Campaign
      # @return [Telnyx::Resources::Campaign::Usecase]
      attr_reader :usecase

      # @return [Telnyx::Resources::Campaign::Osr]
      attr_reader :osr

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @usecase = Telnyx::Resources::Campaign::Usecase.new(client: client)
        @osr = Telnyx::Resources::Campaign::Osr.new(client: client)
      end
    end
  end
end
