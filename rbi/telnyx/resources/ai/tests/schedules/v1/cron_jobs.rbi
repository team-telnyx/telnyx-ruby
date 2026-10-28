# typed: strong

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
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob)
              end
              def retrieve(
                # Numeric ID of the scheduled test job.
                id,
                request_options: {}
              )
              end

              # Updates the specified scheduled test job.
              sig do
                params(
                  id: Integer,
                  agent: T.nilable(Integer),
                  crontab_expression: String,
                  execution_mode: String,
                  frequency: Integer,
                  is_active: T::Boolean,
                  name: String,
                  notify_on:
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::OrSymbol,
                  personalities: T::Array[Integer],
                  run_as_text: T::Boolean,
                  scenarios: T::Array[Integer],
                  tags: T::Array[String],
                  timezone: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob)
              end
              def update(
                # Numeric ID of the scheduled test job.
                id,
                agent: nil,
                # Cron expression controlling when the job runs.
                crontab_expression: nil,
                # Execution mode for the test runs, such as voice, text, or sip.
                execution_mode: nil,
                frequency: nil,
                is_active: nil,
                name: nil,
                notify_on: nil,
                personalities: nil,
                run_as_text: nil,
                scenarios: nil,
                tags: nil,
                timezone: nil,
                request_options: {}
              )
              end

              # Deletes the specified scheduled test job.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.anything)
              end
              def delete(
                # Numeric ID of the scheduled test job.
                id,
                request_options: {}
              )
              end

              # Creates a scheduled test job that runs the selected scenarios on a cron
              # expression.
              sig do
                params(
                  crontab_expression: String,
                  agent: Integer,
                  execution_mode: String,
                  frequency: Integer,
                  is_active: T::Boolean,
                  name: String,
                  notify_on:
                    Telnyx::AI::Tests::Schedules::V1::CronJobCronJobsParams::NotifyOn::OrSymbol,
                  personalities: T::Array[Integer],
                  run_as_text: T::Boolean,
                  scenarios: T::Array[Integer],
                  tags: T::Array[String],
                  timezone: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob)
              end
              def cron_jobs(
                # Cron expression controlling when the job runs.
                crontab_expression:,
                agent: nil,
                # Execution mode for the test runs, such as voice, text, or sip.
                execution_mode: nil,
                frequency: nil,
                is_active: nil,
                name: nil,
                notify_on: nil,
                personalities: nil,
                run_as_text: nil,
                scenarios: nil,
                tags: nil,
                timezone: nil,
                request_options: {}
              )
              end

              # Returns the scheduled test jobs in your organization, optionally filtered by
              # test agent. A scheduled job runs selected scenarios on a cron expression.
              sig do
                params(
                  agent_id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  T::Array[Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob]
                )
              end
              def retrieve_cron_jobs(
                # Filter jobs belonging to the specified test agent.
                agent_id: nil,
                request_options: {}
              )
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
  end
end
