# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        class Schedules
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            class CronJobs
              # Returns the specified scheduled test job.
              #
              # @overload retrieve(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the scheduled test job.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob]
              #
              # @see Telnyx::Models::AI::Tests::Schedules::V1::CronJobRetrieveParams
              def retrieve(id, params = {})
                @client.request(
                  method: :get,
                  path: ["ai/tests/schedules/v1/cron-jobs/%1$s", id],
                  model: Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob,
                  options: params[:request_options]
                )
              end

              # Updates the specified scheduled test job.
              #
              # @overload update(id, agent: nil, crontab_expression: nil, execution_mode: nil, frequency: nil, is_active: nil, name: nil, notify_on: nil, personalities: nil, run_as_text: nil, scenarios: nil, tags: nil, timezone: nil, request_options: {})
              #
              # @param id [Integer] Numeric ID of the scheduled test job.
              #
              # @param agent [Integer, nil]
              #
              # @param crontab_expression [String] Cron expression controlling when the job runs.
              #
              # @param execution_mode [String] Execution mode for the test runs, such as voice, text, or sip.
              #
              # @param frequency [Integer]
              #
              # @param is_active [Boolean]
              #
              # @param name [String]
              #
              # @param notify_on [Symbol, Telnyx::Models::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn]
              #
              # @param personalities [Array<Integer>]
              #
              # @param run_as_text [Boolean]
              #
              # @param scenarios [Array<Integer>]
              #
              # @param tags [Array<String>]
              #
              # @param timezone [String]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob]
              #
              # @see Telnyx::Models::AI::Tests::Schedules::V1::CronJobUpdateParams
              def update(id, params = {})
                parsed, options = Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams.dump_request(params)
                @client.request(
                  method: :patch,
                  path: ["ai/tests/schedules/v1/cron-jobs/%1$s", id],
                  body: parsed,
                  model: Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob,
                  options: options
                )
              end

              # Deletes the specified scheduled test job.
              #
              # @overload delete(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the scheduled test job.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Object]
              #
              # @see Telnyx::Models::AI::Tests::Schedules::V1::CronJobDeleteParams
              def delete(id, params = {})
                @client.request(
                  method: :delete,
                  path: ["ai/tests/schedules/v1/cron-jobs/%1$s", id],
                  model: Telnyx::Internal::Type::Unknown,
                  options: params[:request_options]
                )
              end

              # Creates a scheduled test job that runs the selected scenarios on a cron
              # expression.
              #
              # @overload cron_jobs(crontab_expression:, agent: nil, execution_mode: nil, frequency: nil, is_active: nil, name: nil, notify_on: nil, personalities: nil, run_as_text: nil, scenarios: nil, tags: nil, timezone: nil, request_options: {})
              #
              # @param crontab_expression [String] Cron expression controlling when the job runs.
              #
              # @param agent [Integer]
              #
              # @param execution_mode [String] Execution mode for the test runs, such as voice, text, or sip.
              #
              # @param frequency [Integer]
              #
              # @param is_active [Boolean]
              #
              # @param name [String]
              #
              # @param notify_on [Symbol, Telnyx::Models::AI::Tests::Schedules::V1::CronJobCronJobsParams::NotifyOn]
              #
              # @param personalities [Array<Integer>]
              #
              # @param run_as_text [Boolean]
              #
              # @param scenarios [Array<Integer>]
              #
              # @param tags [Array<String>]
              #
              # @param timezone [String]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob]
              #
              # @see Telnyx::Models::AI::Tests::Schedules::V1::CronJobCronJobsParams
              def cron_jobs(params)
                parsed, options = Telnyx::AI::Tests::Schedules::V1::CronJobCronJobsParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/schedules/v1/cron-jobs",
                  body: parsed,
                  model: Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob,
                  options: options
                )
              end

              # Returns the scheduled test jobs in your organization, optionally filtered by
              # test agent. A scheduled job runs selected scenarios on a cron expression.
              #
              # @overload retrieve_cron_jobs(agent_id: nil, request_options: {})
              #
              # @param agent_id [Integer] Filter jobs belonging to the specified test agent.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Array<Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob>]
              #
              # @see Telnyx::Models::AI::Tests::Schedules::V1::CronJobRetrieveCronJobsParams
              def retrieve_cron_jobs(params = {})
                parsed, options = Telnyx::AI::Tests::Schedules::V1::CronJobRetrieveCronJobsParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/schedules/v1/cron-jobs",
                  query: query,
                  model: Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob],
                  options: options
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
  end
end
