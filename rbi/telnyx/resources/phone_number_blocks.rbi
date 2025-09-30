# typed: strong

module Telnyx
  module Resources
    class PhoneNumberBlocks
      sig { returns(Telnyx::Resources::PhoneNumberBlocks::Jobs) }
      attr_reader :jobs

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
