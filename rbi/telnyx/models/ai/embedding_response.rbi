# typed: strong

module Telnyx
  module Models
    module AI
      class EmbeddingResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::EmbeddingResponse, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::AI::EmbeddingResponse::Data) }
        attr_reader :data

        sig { params(data: Telnyx::AI::EmbeddingResponse::Data::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::AI::EmbeddingResponse::Data::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::AI::EmbeddingResponse::Data }) }
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::EmbeddingResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_accessor :finished_at

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig { returns(T.nilable(String)) }
          attr_reader :task_id

          sig { params(task_id: String).void }
          attr_writer :task_id

          sig { returns(T.nilable(String)) }
          attr_reader :task_name

          sig { params(task_name: String).void }
          attr_writer :task_name

          sig { returns(T.nilable(String)) }
          attr_reader :user_id

          sig { params(user_id: String).void }
          attr_writer :user_id

          sig do
            params(
              created_at: String,
              finished_at: T.nilable(String),
              status: String,
              task_id: String,
              task_name: String,
              user_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            created_at: nil,
            finished_at: nil,
            status: nil,
            task_id: nil,
            task_name: nil,
            user_id: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: String,
                finished_at: T.nilable(String),
                status: String,
                task_id: String,
                task_name: String,
                user_id: String
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
