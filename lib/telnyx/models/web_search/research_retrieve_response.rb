# frozen_string_literal: true

module Telnyx
  module Models
    module WebSearch
      # @see Telnyx::Resources::WebSearch::Research#retrieve
      class ResearchRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data, nil]
        optional :data, -> { Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data]

        # @see Telnyx::Models::WebSearch::ResearchRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute status
          #   Current status of the research task.
          #
          #   @return [Symbol, Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status]
          required :status, enum: -> { Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status }

          # @!attribute task_id
          #   The research task identifier.
          #
          #   @return [String]
          required :task_id, String

          # @!attribute answer
          #   The synthesized research answer (present when status is `completed`).
          #
          #   @return [String, nil]
          optional :answer, String

          # @!attribute citations
          #   Sources cited in the answer (present when status is `completed`).
          #
          #   @return [Array<Telnyx::Models::WebSearch::ResearchCitation>, nil]
          optional :citations, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WebSearch::ResearchCitation] }

          # @!attribute error
          #   Always present in poll responses; `null` unless the task failed.
          #
          #   @return [String, nil]
          optional :error, String, nil?: true

          # @!method initialize(status:, task_id:, answer: nil, citations: nil, error: nil)
          #   @param status [Symbol, Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data::Status] Current status of the research task.
          #
          #   @param task_id [String] The research task identifier.
          #
          #   @param answer [String] The synthesized research answer (present when status is `completed`).
          #
          #   @param citations [Array<Telnyx::Models::WebSearch::ResearchCitation>] Sources cited in the answer (present when status is `completed`).
          #
          #   @param error [String, nil] Always present in poll responses; `null` unless the task failed.

          # Current status of the research task.
          #
          # @see Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            RUNNING = :running
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
