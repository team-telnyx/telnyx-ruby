# typed: strong

module Telnyx
  module Resources
    class ExternalRequirements
      # Requirement Groups
      sig { returns(Telnyx::Resources::ExternalRequirements::SubNumberOrders) }
      attr_reader :sub_number_orders

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
