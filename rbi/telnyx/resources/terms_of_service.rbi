# typed: strong

module Telnyx
  module Resources
    class TermsOfService
      # Terms of Service agreement endpoints
      sig { returns(Telnyx::Resources::TermsOfService::NumberReputation) }
      attr_reader :number_reputation

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
