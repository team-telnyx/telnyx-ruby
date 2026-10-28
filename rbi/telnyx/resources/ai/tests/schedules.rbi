# typed: strong

module Telnyx
  module Resources
    class AI
      class Tests
        class Schedules
          sig { returns(Telnyx::Resources::AI::Tests::Schedules::V1) }
          attr_reader :v1

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
