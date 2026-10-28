# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            # @see Telnyx::Resources::AI::Tests::Schedules::V1::CronJobs#retrieve
            class ScheduledTestJob < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

              # @!attribute agent
              #   ID of the test agent the job belongs to.
              #
              #   @return [Integer]
              required :agent, Integer

              # @!attribute created_at
              #
              #   @return [Time]
              required :created_at, Time

              # @!attribute crontab_expression
              #   Cron expression controlling when the job runs, in the job's timezone.
              #
              #   @return [String]
              required :crontab_expression, String

              # @!attribute is_active
              #
              #   @return [Boolean]
              required :is_active, Telnyx::Internal::Type::Boolean

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute updated_at
              #
              #   @return [Time]
              required :updated_at, Time

              # @!attribute execution_mode
              #   Execution mode for the test runs, such as voice, text, or sip.
              #
              #   @return [String, nil]
              optional :execution_mode, String

              # @!attribute frequency
              #
              #   @return [Integer, nil]
              optional :frequency, Integer

              # @!attribute notify_on
              #   When the job sends a notification.
              #
              #   @return [Symbol, Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn, nil]
              optional :notify_on, enum: -> { Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn }

              # @!attribute personalities
              #
              #   @return [Array<Integer>, nil]
              optional :personalities, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute personality
              #
              #   @return [Integer, nil]
              optional :personality, Integer, nil?: true

              # @!attribute run_as_text
              #   Whether the job runs scenarios as text chat rather than voice calls.
              #
              #   @return [Boolean, nil]
              optional :run_as_text, Telnyx::Internal::Type::Boolean

              # @!attribute scenario_ids
              #   Scenario IDs the job executes.
              #
              #   @return [Array<Integer>, nil]
              optional :scenario_ids, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute scenarios_data
              #
              #   @return [Array<Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData>, nil]
              optional :scenarios_data,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData] }

              # @!attribute tags
              #
              #   @return [Array<String>, nil]
              optional :tags, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute timezone
              #
              #   @return [String, nil]
              optional :timezone, String

              # @!method initialize(id:, agent:, created_at:, crontab_expression:, is_active:, name:, updated_at:, execution_mode: nil, frequency: nil, notify_on: nil, personalities: nil, personality: nil, run_as_text: nil, scenario_ids: nil, scenarios_data: nil, tags: nil, timezone: nil)
              #   @param id [Integer]
              #
              #   @param agent [Integer] ID of the test agent the job belongs to.
              #
              #   @param created_at [Time]
              #
              #   @param crontab_expression [String] Cron expression controlling when the job runs, in the job's timezone.
              #
              #   @param is_active [Boolean]
              #
              #   @param name [String]
              #
              #   @param updated_at [Time]
              #
              #   @param execution_mode [String] Execution mode for the test runs, such as voice, text, or sip.
              #
              #   @param frequency [Integer]
              #
              #   @param notify_on [Symbol, Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn] When the job sends a notification.
              #
              #   @param personalities [Array<Integer>]
              #
              #   @param personality [Integer, nil]
              #
              #   @param run_as_text [Boolean] Whether the job runs scenarios as text chat rather than voice calls.
              #
              #   @param scenario_ids [Array<Integer>] Scenario IDs the job executes.
              #
              #   @param scenarios_data [Array<Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData>]
              #
              #   @param tags [Array<String>]
              #
              #   @param timezone [String]

              # When the job sends a notification.
              #
              # @see Telnyx::Models::AI::Tests::Schedules::V1::ScheduledTestJob#notify_on
              module NotifyOn
                extend Telnyx::Internal::Type::Enum

                NEVER = :never
                SUCCESS = :success
                FAILURE = :failure
                BOTH = :both

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class ScenariosData < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute agent
                #
                #   @return [Integer, nil]
                optional :agent, Integer

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute personality
                #
                #   @return [Integer, nil]
                optional :personality, Integer, nil?: true

                # @!attribute personality_name
                #
                #   @return [String, nil]
                optional :personality_name, String

                # @!method initialize(id: nil, agent: nil, name: nil, personality: nil, personality_name: nil)
                #   @param id [Integer]
                #   @param agent [Integer]
                #   @param name [String]
                #   @param personality [Integer, nil]
                #   @param personality_name [String]
              end
            end
          end
        end
      end
    end
  end
end
