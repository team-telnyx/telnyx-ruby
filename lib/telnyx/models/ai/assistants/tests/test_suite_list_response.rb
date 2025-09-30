# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          # @see Telnyx::Resources::AI::Assistants::Tests::TestSuites#list
          class TestSuiteListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #   Array of unique test suite names available to the user.
            #
            #   @return [Array<String>]
            required :data, Telnyx::Internal::Type::ArrayOf[String]

            # @!method initialize(data:)
            #   Response containing all available test suite names.
            #
            #   Returns a list of distinct test suite names that can be used for filtering and
            #   organizing tests.
            #
            #   @param data [Array<String>] Array of unique test suite names available to the user.
          end
        end
      end
    end
  end
end
