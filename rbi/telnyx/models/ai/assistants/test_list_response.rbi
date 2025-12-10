# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class TestListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Assistants::TestListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # Array of assistant test objects for the current page.
          sig { returns(T::Array[Telnyx::AI::Assistants::AssistantTest]) }
          attr_accessor :data

          # Pagination metadata including total counts and current page info.
          sig { returns(Telnyx::AI::Assistants::Tests::TestSuites::Meta) }
          attr_reader :meta

          sig do
            params(
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).void
          end
          attr_writer :meta

          # Paginated list of assistant tests with metadata.
          #
          # Returns a subset of tests based on pagination parameters along with metadata for
          # implementing pagination controls in the UI.
          sig do
            params(
              data: T::Array[Telnyx::AI::Assistants::AssistantTest::OrHash],
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of assistant test objects for the current page.
            data:,
            # Pagination metadata including total counts and current page info.
            meta:
          )
          end

          sig do
            override.returns(
              {
                data: T::Array[Telnyx::AI::Assistants::AssistantTest],
                meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
