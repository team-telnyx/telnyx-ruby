# typed: strong

module Telnyx
  module Resources
    class MessagingTollfree
      sig { returns(Telnyx::Resources::MessagingTollfree::Verification) }
      attr_reader :verification

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
