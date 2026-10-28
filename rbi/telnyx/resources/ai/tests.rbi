# typed: strong

module Telnyx
  module Resources
    class AI
      class Tests
        sig { returns(Telnyx::Resources::AI::Tests::Schedules) }
        attr_reader :schedules

        sig { returns(Telnyx::Resources::AI::Tests::TestFramework) }
        attr_reader :test_framework

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
