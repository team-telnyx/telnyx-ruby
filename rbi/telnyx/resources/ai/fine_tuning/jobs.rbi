# typed: strong

module Telnyx
  module Resources
    class AI
      class FineTuning
        class Jobs
          # Create a new fine tuning job.
          sig do
            params(
              model: String,
              training_file: String,
              hyperparameters:
                Telnyx::AI::FineTuning::JobCreateParams::Hyperparameters::OrHash,
              suffix: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::FineTuning::FineTuningJob)
          end
          def create(
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

          # Retrieve a fine tuning job by `job_id`.
          sig do
            params(
              job_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::FineTuning::FineTuningJob)
          end
          def retrieve(job_id, request_options: {})
          end

          # Retrieve a list of all fine tuning jobs created by the user.
          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              Telnyx::Models::AI::FineTuning::JobListResponse
            )
          end
          def list(request_options: {})
          end

          # Cancel a fine tuning job.
          sig do
            params(
              job_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::FineTuning::FineTuningJob)
          end
          def cancel(job_id, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
