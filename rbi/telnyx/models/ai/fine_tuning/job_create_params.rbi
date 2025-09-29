# typed: strong

module Telnyx
  module Models
    module AI
      module FineTuning
        class JobCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::FineTuning::JobCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The base model that is being fine-tuned.
          sig { returns(String) }
          attr_accessor :model

          # The storage bucket or object used for training.
          sig { returns(String) }
          attr_accessor :training_file

          # The hyperparameters used for the fine-tuning job.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::FineTuning::JobCreateParams::Hyperparameters
              )
            )
          end
          attr_reader :hyperparameters

          sig do
            params(
              hyperparameters:
                Telnyx::AI::FineTuning::JobCreateParams::Hyperparameters::OrHash
            ).void
          end
          attr_writer :hyperparameters

          # Optional suffix to append to the fine tuned model's name.
          sig { returns(T.nilable(String)) }
          attr_reader :suffix

          sig { params(suffix: String).void }
          attr_writer :suffix

          sig do
            params(
              model: String,
              training_file: String,
              hyperparameters:
                Telnyx::AI::FineTuning::JobCreateParams::Hyperparameters::OrHash,
              suffix: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The base model that is being fine-tuned.
            model:,
            # The storage bucket or object used for training.
            training_file:,
            # The hyperparameters used for the fine-tuning job.
            hyperparameters: nil,
            # Optional suffix to append to the fine tuned model's name.
            suffix: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                model: String,
                training_file: String,
                hyperparameters:
                  Telnyx::AI::FineTuning::JobCreateParams::Hyperparameters,
                suffix: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Hyperparameters < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::FineTuning::JobCreateParams::Hyperparameters,
                  Telnyx::Internal::AnyHash
                )
              end

            # The number of epochs to train the model for. An epoch refers to one full cycle
            # through the training dataset. 'auto' decides the optimal number of epochs based
            # on the size of the dataset. If setting the number manually, we support any
            # number between 1 and 50 epochs.
            sig { returns(T.nilable(Integer)) }
            attr_reader :n_epochs

            sig { params(n_epochs: Integer).void }
            attr_writer :n_epochs

            # The hyperparameters used for the fine-tuning job.
            sig { params(n_epochs: Integer).returns(T.attached_class) }
            def self.new(
              # The number of epochs to train the model for. An epoch refers to one full cycle
              # through the training dataset. 'auto' decides the optimal number of epochs based
              # on the size of the dataset. If setting the number manually, we support any
              # number between 1 and 50 epochs.
              n_epochs: nil
            )
            end

            sig { override.returns({ n_epochs: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
