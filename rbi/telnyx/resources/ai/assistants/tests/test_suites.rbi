# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          class TestSuites
            sig do
              returns(
                Telnyx::Resources::AI::Assistants::Tests::TestSuites::Runs
              )
            end
            attr_reader :runs

            # Retrieves a list of all distinct test suite names available to the current user
            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                Telnyx::Models::AI::Assistants::Tests::TestSuiteListResponse
              )
            end
            def list(request_options: {})
            end

            # @api private
            sig { params(client: Telnyx::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
