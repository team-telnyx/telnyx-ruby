# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # Whether to auto-publish the assistant's instructions as a Langfuse prompt.
      #
      # When ENABLED + prompt_name set, every assistant create/update pushes
      # `instructions` to Langfuse via create_prompt and stores the returned version in
      # prompt_version.
      module PromptSyncStatus
        extend Telnyx::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
