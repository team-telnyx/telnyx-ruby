# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SessionAnalysis#retrieve
    class SessionAnalysisRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute cost
      #
      #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Cost]
      required :cost, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Cost }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Meta]
      required :meta, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Meta }

      # @!attribute root
      #
      #   @return [Telnyx::Models::EventNode]
      required :root, -> { Telnyx::EventNode }

      # @!attribute session_id
      #   Identifier for the analyzed session.
      #
      #   @return [String]
      required :session_id, String

      # @!method initialize(cost:, meta:, root:, session_id:)
      #   @param cost [Telnyx::Models::SessionAnalysisRetrieveResponse::Cost]
      #
      #   @param meta [Telnyx::Models::SessionAnalysisRetrieveResponse::Meta]
      #
      #   @param root [Telnyx::Models::EventNode]
      #
      #   @param session_id [String] Identifier for the analyzed session.

      # @see Telnyx::Models::SessionAnalysisRetrieveResponse#cost
      class Cost < Telnyx::Internal::Type::BaseModel
        # @!attribute currency
        #   ISO 4217 currency code.
        #
        #   @return [String]
        required :currency, String

        # @!attribute total
        #   Total session cost as a decimal string.
        #
        #   @return [String]
        required :total, String

        # @!method initialize(currency:, total:)
        #   @param currency [String] ISO 4217 currency code.
        #
        #   @param total [String] Total session cost as a decimal string.
      end

      # @see Telnyx::Models::SessionAnalysisRetrieveResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute event_count
        #   Total number of events in the session tree.
        #
        #   @return [Integer]
        required :event_count, Integer

        # @!attribute products
        #   List of distinct products involved in the session.
        #
        #   @return [Array<String>]
        required :products, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(event_count:, products:)
        #   @param event_count [Integer] Total number of events in the session tree.
        #
        #   @param products [Array<String>] List of distinct products involved in the session.
      end
    end
  end
end
