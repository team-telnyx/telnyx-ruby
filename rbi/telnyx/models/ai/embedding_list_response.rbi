# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::EmbeddingListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Telnyx::Models::AI::EmbeddingListResponse::Data])
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[Telnyx::Models::AI::EmbeddingListResponse::Data::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::Models::AI::EmbeddingListResponse::Data] }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::EmbeddingListResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :created_at

          # Status of an embeddings task.
          sig { returns(Telnyx::AI::BackgroundTaskStatus::TaggedSymbol) }
          attr_accessor :status

          sig { returns(String) }
          attr_accessor :task_id

          sig { returns(String) }
          attr_accessor :task_name

          sig { returns(String) }
          attr_accessor :user_id

          sig { returns(T.nilable(String)) }
          attr_reader :bucket

          sig { params(bucket: String).void }
          attr_writer :bucket

          sig { returns(T.nilable(Time)) }
          attr_reader :finished_at

          sig { params(finished_at: Time).void }
          attr_writer :finished_at

          sig do
            params(
              created_at: Time,
              status: Telnyx::AI::BackgroundTaskStatus::OrSymbol,
              task_id: String,
              task_name: String,
              user_id: String,
              bucket: String,
              finished_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            created_at:,
            # Status of an embeddings task.
            status:,
            task_id:,
            task_name:,
            user_id:,
            bucket: nil,
            finished_at: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                status: Telnyx::AI::BackgroundTaskStatus::TaggedSymbol,
                task_id: String,
                task_name: String,
                user_id: String,
                bucket: String,
                finished_at: Time
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
