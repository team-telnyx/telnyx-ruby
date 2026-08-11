# frozen_string_literal: true

module Telnyx
  module Resources
    class Rcs
      # Manage RCS agent registration, testing, verification, and launch.
      # @return [Telnyx::Resources::Rcs::Agents]
      attr_reader :agents

      # Manage the legal business entities that operate RCS agents.
      # @return [Telnyx::Resources::Rcs::Brands]
      attr_reader :brands

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @agents = Telnyx::Resources::Rcs::Agents.new(client: client)
        @brands = Telnyx::Resources::Rcs::Brands.new(client: client)
      end
    end
  end
end
