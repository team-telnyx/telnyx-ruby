# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            class ScheduledTestJob < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              # ID of the test agent the job belongs to.
              sig { returns(Integer) }
              attr_accessor :agent

              sig { returns(Time) }
              attr_accessor :created_at

              # Cron expression controlling when the job runs, in the job's timezone.
              sig { returns(String) }
              attr_accessor :crontab_expression

              sig { returns(T::Boolean) }
              attr_accessor :is_active

              sig { returns(String) }
              attr_accessor :name

              sig { returns(Time) }
              attr_accessor :updated_at

              # Execution mode for the test runs, such as voice, text, or sip.
              sig { returns(T.nilable(String)) }
              attr_reader :execution_mode

              sig { params(execution_mode: String).void }
              attr_writer :execution_mode

              sig { returns(T.nilable(Integer)) }
              attr_reader :frequency

              sig { params(frequency: Integer).void }
              attr_writer :frequency

              # When the job sends a notification.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::TaggedSymbol
                  )
                )
              end
              attr_reader :notify_on

              sig do
                params(
                  notify_on:
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::OrSymbol
                ).void
              end
              attr_writer :notify_on

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :personalities

              sig { params(personalities: T::Array[Integer]).void }
              attr_writer :personalities

              sig { returns(T.nilable(Integer)) }
              attr_accessor :personality

              # Whether the job runs scenarios as text chat rather than voice calls.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :run_as_text

              sig { params(run_as_text: T::Boolean).void }
              attr_writer :run_as_text

              # Scenario IDs the job executes.
              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :scenario_ids

              sig { params(scenario_ids: T::Array[Integer]).void }
              attr_writer :scenario_ids

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData
                    ]
                  )
                )
              end
              attr_reader :scenarios_data

              sig do
                params(
                  scenarios_data:
                    T::Array[
                      Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData::OrHash
                    ]
                ).void
              end
              attr_writer :scenarios_data

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :tags

              sig { params(tags: T::Array[String]).void }
              attr_writer :tags

              sig { returns(T.nilable(String)) }
              attr_reader :timezone

              sig { params(timezone: String).void }
              attr_writer :timezone

              sig do
                params(
                  id: Integer,
                  agent: Integer,
                  created_at: Time,
                  crontab_expression: String,
                  is_active: T::Boolean,
                  name: String,
                  updated_at: Time,
                  execution_mode: String,
                  frequency: Integer,
                  notify_on:
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::OrSymbol,
                  personalities: T::Array[Integer],
                  personality: T.nilable(Integer),
                  run_as_text: T::Boolean,
                  scenario_ids: T::Array[Integer],
                  scenarios_data:
                    T::Array[
                      Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData::OrHash
                    ],
                  tags: T::Array[String],
                  timezone: String
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # ID of the test agent the job belongs to.
                agent:,
                created_at:,
                # Cron expression controlling when the job runs, in the job's timezone.
                crontab_expression:,
                is_active:,
                name:,
                updated_at:,
                # Execution mode for the test runs, such as voice, text, or sip.
                execution_mode: nil,
                frequency: nil,
                # When the job sends a notification.
                notify_on: nil,
                personalities: nil,
                personality: nil,
                # Whether the job runs scenarios as text chat rather than voice calls.
                run_as_text: nil,
                # Scenario IDs the job executes.
                scenario_ids: nil,
                scenarios_data: nil,
                tags: nil,
                timezone: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    agent: Integer,
                    created_at: Time,
                    crontab_expression: String,
                    is_active: T::Boolean,
                    name: String,
                    updated_at: Time,
                    execution_mode: String,
                    frequency: Integer,
                    notify_on:
                      Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::TaggedSymbol,
                    personalities: T::Array[Integer],
                    personality: T.nilable(Integer),
                    run_as_text: T::Boolean,
                    scenario_ids: T::Array[Integer],
                    scenarios_data:
                      T::Array[
                        Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData
                      ],
                    tags: T::Array[String],
                    timezone: String
                  }
                )
              end
              def to_hash
              end

              # When the job sends a notification.
              module NotifyOn
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NEVER =
                  T.let(
                    :never,
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::TaggedSymbol
                  )
                SUCCESS =
                  T.let(
                    :success,
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::TaggedSymbol
                  )
                FAILURE =
                  T.let(
                    :failure,
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::TaggedSymbol
                  )
                BOTH =
                  T.let(
                    :both,
                    Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::NotifyOn::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class ScenariosData < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob::ScenariosData,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :id

                sig { params(id: Integer).void }
                attr_writer :id

                sig { returns(T.nilable(Integer)) }
                attr_reader :agent

                sig { params(agent: Integer).void }
                attr_writer :agent

                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                sig { returns(T.nilable(Integer)) }
                attr_accessor :personality

                sig { returns(T.nilable(String)) }
                attr_reader :personality_name

                sig { params(personality_name: String).void }
                attr_writer :personality_name

                sig do
                  params(
                    id: Integer,
                    agent: Integer,
                    name: String,
                    personality: T.nilable(Integer),
                    personality_name: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  id: nil,
                  agent: nil,
                  name: nil,
                  personality: nil,
                  personality_name: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: Integer,
                      agent: Integer,
                      name: String,
                      personality: T.nilable(Integer),
                      personality_name: String
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
    end
  end
end
