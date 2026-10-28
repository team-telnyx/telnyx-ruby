# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            class CronJobUpdateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              sig { returns(T.nilable(Integer)) }
              attr_accessor :agent

              # Cron expression controlling when the job runs.
              sig { returns(T.nilable(String)) }
              attr_reader :crontab_expression

              sig { params(crontab_expression: String).void }
              attr_writer :crontab_expression

              # Execution mode for the test runs, such as voice, text, or sip.
              sig { returns(T.nilable(String)) }
              attr_reader :execution_mode

              sig { params(execution_mode: String).void }
              attr_writer :execution_mode

              sig { returns(T.nilable(Integer)) }
              attr_reader :frequency

              sig { params(frequency: Integer).void }
              attr_writer :frequency

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_active

              sig { params(is_active: T::Boolean).void }
              attr_writer :is_active

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::OrSymbol
                  )
                )
              end
              attr_reader :notify_on

              sig do
                params(
                  notify_on:
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::OrSymbol
                ).void
              end
              attr_writer :notify_on

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :personalities

              sig { params(personalities: T::Array[Integer]).void }
              attr_writer :personalities

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :run_as_text

              sig { params(run_as_text: T::Boolean).void }
              attr_writer :run_as_text

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :scenarios

              sig { params(scenarios: T::Array[Integer]).void }
              attr_writer :scenarios

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
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
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

              sig do
                override.returns(
                  {
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
                    request_options: Telnyx::RequestOptions
                  }
                )
              end
              def to_hash
              end

              module NotifyOn
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NEVER =
                  T.let(
                    :never,
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::TaggedSymbol
                  )
                SUCCESS =
                  T.let(
                    :success,
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::TaggedSymbol
                  )
                FAILURE =
                  T.let(
                    :failure,
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::TaggedSymbol
                  )
                BOTH =
                  T.let(
                    :both,
                    Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn::TaggedSymbol
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
  end
end
