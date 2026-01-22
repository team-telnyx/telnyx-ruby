# typed: strong

module Telnyx
  module Resources
    class Organizations
      sig { returns(Telnyx::Resources::Organizations::Users) }
      attr_reader :users

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
