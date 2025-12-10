# typed: strong

module Telnyx
  module Resources
    class Campaign
      sig { returns(Telnyx::Resources::Campaign::Usecase) }
      attr_reader :usecase

      sig { returns(Telnyx::Resources::Campaign::Osr) }
      attr_reader :osr

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
