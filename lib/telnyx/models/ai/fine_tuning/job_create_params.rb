# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module FineTuning
        # @see Telnyx::Resources::AI::FineTuning::Jobs#create
        class JobCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute model
          #   The base model that is being fine-tuned.
          #
          #   @return [String]
          required :model, String

          # @!attribute training_file
          #   The storage bucket or object used for training.
          #
          #   @return [String]
          required :training_file, String

          # @!attribute hyperparameters
          #   The hyperparameters used for the fine-tuning job.
          #
          #   @return [Telnyx::Models::AI::FineTuning::JobCreateParams::Hyperparameters, nil]
          optional :hyperparameters, -> { Telnyx::AI::FineTuning::JobCreateParams::Hyperparameters }

          # @!attribute suffix
          #   Optional suffix to append to the fine tuned model's name.
          #
          #   @return [String, nil]
          optional :suffix, String

          # @!method initialize(model:, training_file:, hyperparameters: nil, suffix: nil, request_options: {})
          #   @param model [String] The base model that is being fine-tuned.
          #
          #   @param training_file [String] The storage bucket or object used for training.
          #
          #   @param hyperparameters [Telnyx::Models::AI::FineTuning::JobCreateParams::Hyperparameters] The hyperparameters used for the fine-tuning job.
          #
          #   @param suffix [String] Optional suffix to append to the fine tuned model's name.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Hyperparameters < Telnyx::Internal::Type::BaseModel
            # @!attribute n_epochs
            #   The number of epochs to train the model for. An epoch refers to one full cycle
            #   through the training dataset. 'auto' decides the optimal number of epochs based
            #   on the size of the dataset. If setting the number manually, we support any
            #   number between 1 and 50 epochs.
            #
            #   @return [Integer, nil]
            optional :n_epochs, Integer

            # @!method initialize(n_epochs: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::FineTuning::JobCreateParams::Hyperparameters} for more
            #   details.
            #
            #   The hyperparameters used for the fine-tuning job.
            #
            #   @param n_epochs [Integer] The number of epochs to train the model for. An epoch refers to one full cycle t
          end
        end
      end
    end
  end
end
