# typed: strong

module Telnyx
  module Resources
    class Compute
      sig { returns(Telnyx::Resources::Compute::Funcs) }
      attr_reader :funcs

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
