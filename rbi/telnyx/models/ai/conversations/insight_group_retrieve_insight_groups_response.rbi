# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightGroupRetrieveInsightGroupsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(T::Array[Telnyx::AI::Conversations::InsightTemplateGroup])
          end
          attr_accessor :data

          sig { returns(Telnyx::AI::Assistants::Tests::TestSuites::Meta) }
          attr_reader :meta

          sig do
            params(
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig do
            params(
              data:
                T::Array[
                  Telnyx::AI::Conversations::InsightTemplateGroup::OrHash
                ],
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:, meta:)
          end

          sig do
            override.returns(
              {
                data: T::Array[Telnyx::AI::Conversations::InsightTemplateGroup],
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
