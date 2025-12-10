# typed: strong

module Telnyx
  module Resources
    class Public
      sig { returns(Telnyx::Resources::Public::Brand) }
      attr_reader :brand

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
