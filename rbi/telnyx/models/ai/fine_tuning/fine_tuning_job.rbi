# typed: strong

module Telnyx
  module Models
    module AI
      FineTuningJob = FineTuning::FineTuningJob

      module FineTuning
        class FineTuningJob < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::FineTuning::FineTuningJob,
                Telnyx::Internal::AnyHash
              )
            end

          # The name of the fine-tuned model that is being created.
          sig { returns(String) }
          attr_accessor :id

          # The Unix timestamp (in seconds) for when the fine-tuning job was created.
          sig { returns(Integer) }
          attr_accessor :created_at

          # The Unix timestamp (in seconds) for when the fine-tuning job was finished. The
          # value will be null if the fine-tuning job is still running.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :finished_at

          # The hyperparameters used for the fine-tuning job.
          sig do
            returns(Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters)
          end
          attr_reader :hyperparameters

          sig do
            params(
              hyperparameters:
                Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters::OrHash
            ).void
          end
          attr_writer :hyperparameters

          # The base model that is being fine-tuned.
          sig { returns(String) }
          attr_accessor :model

          # The organization that owns the fine-tuning job.
          sig { returns(String) }
          attr_accessor :organization_id

          # The current status of the fine-tuning job.
          sig do
            returns(Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol)
          end
          attr_accessor :status

          # The total number of billable tokens processed by this fine-tuning job. The value
          # will be null if the fine-tuning job is still running.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :trained_tokens

          # The storage bucket or object used for training.
          sig { returns(String) }
          attr_accessor :training_file

          # The `fine_tuning.job` object represents a fine-tuning job that has been created
          # through the API.
          sig do
            params(
              id: String,
              created_at: Integer,
              finished_at: T.nilable(Integer),
              hyperparameters:
                Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters::OrHash,
              model: String,
              organization_id: String,
              status: Telnyx::AI::FineTuning::FineTuningJob::Status::OrSymbol,
              trained_tokens: T.nilable(Integer),
              training_file: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the fine-tuned model that is being created.
            id:,
            # The Unix timestamp (in seconds) for when the fine-tuning job was created.
            created_at:,
            # The Unix timestamp (in seconds) for when the fine-tuning job was finished. The
            # value will be null if the fine-tuning job is still running.
            finished_at:,
            # The hyperparameters used for the fine-tuning job.
            hyperparameters:,
            # The base model that is being fine-tuned.
            model:,
            # The organization that owns the fine-tuning job.
            organization_id:,
            # The current status of the fine-tuning job.
            status:,
            # The total number of billable tokens processed by this fine-tuning job. The value
            # will be null if the fine-tuning job is still running.
            trained_tokens:,
            # The storage bucket or object used for training.
            training_file:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Integer,
                finished_at: T.nilable(Integer),
                hyperparameters:
                  Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters,
                model: String,
                organization_id: String,
                status:
                  Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol,
                trained_tokens: T.nilable(Integer),
                training_file: String
              }
            )
          end
          def to_hash
          end

          class Hyperparameters < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters,
                  Telnyx::Internal::AnyHash
                )
              end

            # The number of epochs to train the model for. An epoch refers to one full cycle
            # through the training dataset.
            sig { returns(Integer) }
            attr_accessor :n_epochs

            # The hyperparameters used for the fine-tuning job.
            sig { params(n_epochs: Integer).returns(T.attached_class) }
            def self.new(
              # The number of epochs to train the model for. An epoch refers to one full cycle
              # through the training dataset.
              n_epochs:
            )
            end

            sig { override.returns({ n_epochs: Integer }) }
            def to_hash
            end
          end

          # The current status of the fine-tuning job.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::FineTuning::FineTuningJob::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUEUED =
              T.let(
                :queued,
                Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol
              )
            RUNNING =
              T.let(
                :running,
                Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol
              )
            SUCCEEDED =
              T.let(
                :succeeded,
                Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::FineTuning::FineTuningJob::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
