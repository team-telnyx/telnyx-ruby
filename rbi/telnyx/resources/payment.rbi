# typed: strong

module Telnyx
  module Resources
    class Payment
      sig { returns(Telnyx::Resources::Payment::AutoRechargePrefs) }
      attr_reader :auto_recharge_prefs

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
