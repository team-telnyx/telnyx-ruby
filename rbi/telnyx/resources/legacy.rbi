# typed: strong

module Telnyx
  module Resources
    class Legacy
      sig { returns(Telnyx::Resources::Legacy::Reporting) }
      attr_reader :reporting

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
