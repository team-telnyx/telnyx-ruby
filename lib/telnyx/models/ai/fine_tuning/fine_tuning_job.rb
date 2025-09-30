# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module FineTuning
        # @see Telnyx::Resources::AI::FineTuning::Jobs#create
        class FineTuningJob < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The name of the fine-tuned model that is being created.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   The Unix timestamp (in seconds) for when the fine-tuning job was created.
          #
          #   @return [Integer]
          required :created_at, Integer

          # @!attribute finished_at
          #   The Unix timestamp (in seconds) for when the fine-tuning job was finished. The
          #   value will be null if the fine-tuning job is still running.
          #
          #   @return [Integer, nil]
          required :finished_at, Integer, nil?: true

          # @!attribute hyperparameters
          #   The hyperparameters used for the fine-tuning job.
          #
          #   @return [Telnyx::Models::AI::FineTuning::FineTuningJob::Hyperparameters]
          required :hyperparameters, -> { Telnyx::AI::FineTuning::FineTuningJob::Hyperparameters }

          # @!attribute model
          #   The base model that is being fine-tuned.
          #
          #   @return [String]
          required :model, String

          # @!attribute organization_id
          #   The organization that owns the fine-tuning job.
          #
          #   @return [String]
          required :organization_id, String

          # @!attribute status
          #   The current status of the fine-tuning job.
          #
          #   @return [Symbol, Telnyx::Models::AI::FineTuning::FineTuningJob::Status]
          required :status, enum: -> { Telnyx::AI::FineTuning::FineTuningJob::Status }

          # @!attribute trained_tokens
          #   The total number of billable tokens processed by this fine-tuning job. The value
          #   will be null if the fine-tuning job is still running.
          #
          #   @return [Integer, nil]
          required :trained_tokens, Integer, nil?: true

          # @!attribute training_file
          #   The storage bucket or object used for training.
          #
          #   @return [String]
          required :training_file, String

          # @!method initialize(id:, created_at:, finished_at:, hyperparameters:, model:, organization_id:, status:, trained_tokens:, training_file:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::FineTuning::FineTuningJob} for more details.
          #
          #   The `fine_tuning.job` object represents a fine-tuning job that has been created
          #   through the API.
          #
          #   @param id [String] The name of the fine-tuned model that is being created.
          #
          #   @param created_at [Integer] The Unix timestamp (in seconds) for when the fine-tuning job was created.
          #
          #   @param finished_at [Integer, nil] The Unix timestamp (in seconds) for when the fine-tuning job was finished. The v
          #
          #   @param hyperparameters [Telnyx::Models::AI::FineTuning::FineTuningJob::Hyperparameters] The hyperparameters used for the fine-tuning job.
          #
          #   @param model [String] The base model that is being fine-tuned.
          #
          #   @param organization_id [String] The organization that owns the fine-tuning job.
          #
          #   @param status [Symbol, Telnyx::Models::AI::FineTuning::FineTuningJob::Status] The current status of the fine-tuning job.
          #
          #   @param trained_tokens [Integer, nil] The total number of billable tokens processed by this fine-tuning job. The value
          #
          #   @param training_file [String] The storage bucket or object used for training.

          # @see Telnyx::Models::AI::FineTuning::FineTuningJob#hyperparameters
          class Hyperparameters < Telnyx::Internal::Type::BaseModel
            # @!attribute n_epochs
            #   The number of epochs to train the model for. An epoch refers to one full cycle
            #   through the training dataset.
            #
            #   @return [Integer]
            required :n_epochs, Integer

            # @!method initialize(n_epochs:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::FineTuning::FineTuningJob::Hyperparameters} for more
            #   details.
            #
            #   The hyperparameters used for the fine-tuning job.
            #
            #   @param n_epochs [Integer] The number of epochs to train the model for. An epoch refers to one full cycle t
          end

          # The current status of the fine-tuning job.
          #
          # @see Telnyx::Models::AI::FineTuning::FineTuningJob#status
          module Status
            extend Telnyx::Internal::Type::Enum

            QUEUED = :queued
            RUNNING = :running
            SUCCEEDED = :succeeded
            FAILED = :failed
            CANCELLED = :cancelled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      FineTuningJob = FineTuning::FineTuningJob
    end
  end
end
