# frozen_string_literal: true

module Telnyx
  module Resources
    class Payment
      # @return [Telnyx::Resources::Payment::AutoRechargePrefs]
      attr_reader :auto_recharge_prefs

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @auto_recharge_prefs = Telnyx::Resources::Payment::AutoRechargePrefs.new(client: client)
      end
    end
  end
end
