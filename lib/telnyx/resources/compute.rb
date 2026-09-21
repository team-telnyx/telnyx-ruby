# frozen_string_literal: true

module Telnyx
  module Resources
    class Compute
      # @return [Telnyx::Resources::Compute::Funcs]
      attr_reader :funcs

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @funcs = Telnyx::Resources::Compute::Funcs.new(client: client)
      end
    end
  end
end
