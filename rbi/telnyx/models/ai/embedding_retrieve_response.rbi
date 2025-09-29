# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::EmbeddingRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::Models::AI::EmbeddingRetrieveResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::AI::EmbeddingRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::AI::EmbeddingRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::AI::EmbeddingRetrieveResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::EmbeddingRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :finished_at

          sig { params(finished_at: String).void }
          attr_writer :finished_at

          # Status of an embeddings task.
          sig do
            returns(T.nilable(Telnyx::AI::BackgroundTaskStatus::TaggedSymbol))
          end
          attr_reader :status

          sig do
            params(status: Telnyx::AI::BackgroundTaskStatus::OrSymbol).void
          end
          attr_writer :status

          sig { returns(T.nilable(String)) }
          attr_reader :task_id

          sig { params(task_id: String).void }
          attr_writer :task_id

          sig { returns(T.nilable(String)) }
          attr_reader :task_name

          sig { params(task_name: String).void }
          attr_writer :task_name

          sig do
            params(
              created_at: String,
              finished_at: String,
              status: Telnyx::AI::BackgroundTaskStatus::OrSymbol,
              task_id: String,
              task_name: String
            ).returns(T.attached_class)
          end
          def self.new(
            created_at: nil,
            finished_at: nil,
            # Status of an embeddings task.
            status: nil,
            task_id: nil,
            task_name: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: String,
                finished_at: String,
                status: Telnyx::AI::BackgroundTaskStatus::TaggedSymbol,
                task_id: String,
                task_name: String
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
