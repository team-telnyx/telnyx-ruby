# frozen_string_literal: true

module Telnyx
  module Models
    module WebSearch
      # @see Telnyx::Resources::WebSearch::Research#create
      class ResearchCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Synchronous research response (when `background` is false or unset).
        #
        #   @return [Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync, Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync, nil]
        optional :data, union: -> { Telnyx::Models::WebSearch::ResearchCreateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync, Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync] Synchronous research response (when `background` is false or unset).

        # Synchronous research response (when `background` is false or unset).
        #
        # @see Telnyx::Models::WebSearch::ResearchCreateResponse#data
        module Data
          extend Telnyx::Internal::Type::Union

          # Synchronous research response (when `background` is false or unset).
          variant -> { Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync }

          # Asynchronous research response (when `background` is true).
          variant -> { Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync }

          class ResearchResponseSync < Telnyx::Internal::Type::BaseModel
            # @!attribute answer
            #   The synthesized research answer.
            #
            #   @return [String]
            required :answer, String

            # @!attribute citations
            #   Sources cited in the answer.
            #
            #   @return [Array<Telnyx::Models::WebSearch::ResearchCitation>, nil]
            optional :citations, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WebSearch::ResearchCitation] }

            # @!method initialize(answer:, citations: nil)
            #   Synchronous research response (when `background` is false or unset).
            #
            #   @param answer [String] The synthesized research answer.
            #
            #   @param citations [Array<Telnyx::Models::WebSearch::ResearchCitation>] Sources cited in the answer.
          end

          class ResearchResponseAsync < Telnyx::Internal::Type::BaseModel
            # @!attribute status
            #   Current status of the research task.
            #
            #   @return [Symbol, Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status]
            required :status,
                     enum: -> { Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status }

            # @!attribute task_id
            #   Unique identifier for the research task. Use this to poll the status.
            #
            #   @return [String]
            required :task_id, String

            # @!method initialize(status:, task_id:)
            #   Asynchronous research response (when `background` is true).
            #
            #   @param status [Symbol, Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync::Status] Current status of the research task.
            #
            #   @param task_id [String] Unique identifier for the research task. Use this to poll the status.

            # Current status of the research task.
            #
            # @see Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync#status
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

          # @!method self.variants
          #   @return [Array(Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseSync, Telnyx::Models::WebSearch::ResearchCreateResponse::Data::ResearchResponseAsync)]
        end
      end
    end
  end
end
