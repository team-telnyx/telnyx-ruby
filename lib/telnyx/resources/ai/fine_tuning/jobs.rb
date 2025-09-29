# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class FineTuning
        class Jobs
          # Create a new fine tuning job.
          #
          # @overload create(model:, training_file:, hyperparameters: nil, suffix: nil, request_options: {})
          #
          # @param model [String] The base model that is being fine-tuned.
          #
          # @param training_file [String] The storage bucket or object used for training.
          #
          # @param hyperparameters [Telnyx::Models::AI::FineTuning::JobCreateParams::Hyperparameters] The hyperparameters used for the fine-tuning job.
          #
          # @param suffix [String] Optional suffix to append to the fine tuned model's name.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::FineTuning::FineTuningJob]
          #
          # @see Telnyx::Models::AI::FineTuning::JobCreateParams
          def create(params)
            parsed, options = Telnyx::AI::FineTuning::JobCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/fine_tuning/jobs",
              body: parsed,
              model: Telnyx::AI::FineTuning::FineTuningJob,
              options: options
            )
          end

          # Retrieve a fine tuning job by `job_id`.
          #
          # @overload retrieve(job_id, request_options: {})
          #
          # @param job_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::FineTuning::FineTuningJob]
          #
          # @see Telnyx::Models::AI::FineTuning::JobRetrieveParams
          def retrieve(job_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/fine_tuning/jobs/%1$s", job_id],
              model: Telnyx::AI::FineTuning::FineTuningJob,
              options: params[:request_options]
            )
          end

          # Retrieve a list of all fine tuning jobs created by the user.
          #
          # @overload list(request_options: {})
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::FineTuning::JobListResponse]
          #
          # @see Telnyx::Models::AI::FineTuning::JobListParams
          def list(params = {})
            @client.request(
              method: :get,
              path: "ai/fine_tuning/jobs",
              model: Telnyx::Models::AI::FineTuning::JobListResponse,
              options: params[:request_options]
            )
          end

          # Cancel a fine tuning job.
          #
          # @overload cancel(job_id, request_options: {})
          #
          # @param job_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::FineTuning::FineTuningJob]
          #
          # @see Telnyx::Models::AI::FineTuning::JobCancelParams
          def cancel(job_id, params = {})
            @client.request(
              method: :post,
              path: ["ai/fine_tuning/jobs/%1$s/cancel", job_id],
              model: Telnyx::AI::FineTuning::FineTuningJob,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
