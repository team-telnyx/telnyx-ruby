# typed: strong

module Telnyx
  module Resources
    class AI
      class FineTuning
        sig { returns(Telnyx::Resources::AI::FineTuning::Jobs) }
        attr_reader :jobs

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
