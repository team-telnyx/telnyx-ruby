# typed: strong

module Telnyx
  module Models
    module AI
      module Conversations
        class InsightTemplateGroup < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Conversations::InsightTemplateGroup,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig do
            returns(
              T.nilable(T::Array[Telnyx::AI::Conversations::InsightTemplate])
            )
          end
          attr_reader :insights

          sig do
            params(
              insights:
                T::Array[Telnyx::AI::Conversations::InsightTemplate::OrHash]
            ).void
          end
          attr_writer :insights

          sig { returns(T.nilable(String)) }
          attr_reader :webhook

          sig { params(webhook: String).void }
          attr_writer :webhook

          sig do
            params(
              id: String,
              created_at: Time,
              name: String,
              description: String,
              insights:
                T::Array[Telnyx::AI::Conversations::InsightTemplate::OrHash],
              webhook: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            name:,
            description: nil,
            insights: nil,
            webhook: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                name: String,
                description: String,
                insights: T::Array[Telnyx::AI::Conversations::InsightTemplate],
                webhook: String
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
