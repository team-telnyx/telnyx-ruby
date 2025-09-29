# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          module TestSuites
            # @type [Telnyx::Internal::Type::Converter]
            RunTriggerResponse =
              Telnyx::Internal::Type::ArrayOf[-> { Telnyx::AI::Assistants::Tests::TestRunResponse }]
          end
        end
      end
    end
  end
end
