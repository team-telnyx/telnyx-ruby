# typed: strong

module Telnyx
  module Resources
    class CampaignBuilder
      sig { returns(Telnyx::Resources::CampaignBuilder::Brand) }
      attr_reader :brand

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
