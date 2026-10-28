# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            # @see Telnyx::Resources::AI::Tests::Schedules::V1::CronJobs#update
            class CronJobUpdateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

              # @!attribute agent
              #
              #   @return [Integer, nil]
              optional :agent, Integer, nil?: true

              # @!attribute crontab_expression
              #   Cron expression controlling when the job runs.
              #
              #   @return [String, nil]
              optional :crontab_expression, String

              # @!attribute execution_mode
              #   Execution mode for the test runs, such as voice, text, or sip.
              #
              #   @return [String, nil]
              optional :execution_mode, String

              # @!attribute frequency
              #
              #   @return [Integer, nil]
              optional :frequency, Integer

              # @!attribute is_active
              #
              #   @return [Boolean, nil]
              optional :is_active, Telnyx::Internal::Type::Boolean

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute notify_on
              #
              #   @return [Symbol, Telnyx::Models::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn, nil]
              optional :notify_on, enum: -> { Telnyx::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn }

              # @!attribute personalities
              #
              #   @return [Array<Integer>, nil]
              optional :personalities, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute run_as_text
              #
              #   @return [Boolean, nil]
              optional :run_as_text, Telnyx::Internal::Type::Boolean

              # @!attribute scenarios
              #
              #   @return [Array<Integer>, nil]
              optional :scenarios, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute tags
              #
              #   @return [Array<String>, nil]
              optional :tags, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute timezone
              #
              #   @return [String, nil]
              optional :timezone, String

              # @!method initialize(id:, agent: nil, crontab_expression: nil, execution_mode: nil, frequency: nil, is_active: nil, name: nil, notify_on: nil, personalities: nil, run_as_text: nil, scenarios: nil, tags: nil, timezone: nil, request_options: {})
              #   @param id [Integer]
              #
              #   @param agent [Integer, nil]
              #
              #   @param crontab_expression [String] Cron expression controlling when the job runs.
              #
              #   @param execution_mode [String] Execution mode for the test runs, such as voice, text, or sip.
              #
              #   @param frequency [Integer]
              #
              #   @param is_active [Boolean]
              #
              #   @param name [String]
              #
              #   @param notify_on [Symbol, Telnyx::Models::AI::Tests::Schedules::V1::CronJobUpdateParams::NotifyOn]
              #
              #   @param personalities [Array<Integer>]
              #
              #   @param run_as_text [Boolean]
              #
              #   @param scenarios [Array<Integer>]
              #
              #   @param tags [Array<String>]
              #
              #   @param timezone [String]
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

              module NotifyOn
                extend Telnyx::Internal::Type::Enum

                NEVER = :never
                SUCCESS = :success
                FAILURE = :failure
                BOTH = :both

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
