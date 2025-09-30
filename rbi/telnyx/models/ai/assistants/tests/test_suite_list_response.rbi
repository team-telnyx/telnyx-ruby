# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          class TestSuiteListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Assistants::Tests::TestSuiteListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Array of unique test suite names available to the user.
            sig { returns(T::Array[String]) }
            attr_accessor :data

            # Response containing all available test suite names.
            #
            # Returns a list of distinct test suite names that can be used for filtering and
            # organizing tests.
            sig { params(data: T::Array[String]).returns(T.attached_class) }
            def self.new(
              # Array of unique test suite names available to the user.
              data:
            )
            end

            sig { override.returns({ data: T::Array[String] }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
