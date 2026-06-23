# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          module EventType
            extend Telnyx::Internal::Type::Enum

            STATUS_CHANGE = :status_change
            STEP_STARTED = :step_started
            STEP_COMPLETED = :step_completed
            STEP_FAILED = :step_failed
            TOOL_CALL = :tool_call
            TOOL_RESULT = :tool_result
            MESSAGE = :message
            ERROR = :error
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
