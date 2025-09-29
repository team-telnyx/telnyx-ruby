# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          module TestSuites
            RunTriggerResponse =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::Assistants::Tests::TestRunResponse
                ],
                Telnyx::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
