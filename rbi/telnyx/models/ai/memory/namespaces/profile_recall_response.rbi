# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileRecallResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data
                ]
              )
            end
            attr_accessor :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data
                    ]
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(String) }
              attr_accessor :text

              sig { returns(T.nilable(String)) }
              attr_accessor :recorded_at

              # Relevance, 0-1. Null where the deployment's reranker is a passthrough; results
              # are in rank order either way.
              sig { returns(T.nilable(Float)) }
              attr_accessor :score

              sig do
                params(
                  id: String,
                  text: String,
                  recorded_at: T.nilable(String),
                  score: T.nilable(Float)
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                text:,
                recorded_at: nil,
                # Relevance, 0-1. Null where the deployment's reranker is a passthrough; results
                # are in rank order either way.
                score: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    text: String,
                    recorded_at: T.nilable(String),
                    score: T.nilable(Float)
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
  end
end
