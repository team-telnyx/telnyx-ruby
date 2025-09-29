# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # Status of an embeddings task.
      module BackgroundTaskStatus
        extend Telnyx::Internal::Type::Enum

        QUEUED = :queued
        PROCESSING = :processing
        SUCCESS = :success
        FAILURE = :failure
        PARTIAL_SUCCESS = :partial_success

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
