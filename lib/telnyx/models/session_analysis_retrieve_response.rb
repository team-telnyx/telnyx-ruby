# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SessionAnalysis#retrieve
    class SessionAnalysisRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute cost
      #
      #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Cost]
      required :cost, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Cost }

      # @!attribute created_at
      #   When the session started.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute meta
      #
      #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Meta]
      required :meta, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Meta }

      # @!attribute root
      #
      #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Root]
      required :root, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Root }

      # @!attribute session_id
      #   Identifier for the analyzed session.
      #
      #   @return [String]
      required :session_id, String

      # @!attribute status
      #   Analysis status (e.g. "completed").
      #
      #   @return [String]
      required :status, String

      # @!attribute completed_at
      #   When the session completed.
      #
      #   @return [Time, nil]
      optional :completed_at, Time, nil?: true

      # @!method initialize(cost:, created_at:, meta:, root:, session_id:, status:, completed_at: nil)
      #   @param cost [Telnyx::Models::SessionAnalysisRetrieveResponse::Cost]
      #
      #   @param created_at [Time] When the session started.
      #
      #   @param meta [Telnyx::Models::SessionAnalysisRetrieveResponse::Meta]
      #
      #   @param root [Telnyx::Models::SessionAnalysisRetrieveResponse::Root]
      #
      #   @param session_id [String] Identifier for the analyzed session.
      #
      #   @param status [String] Analysis status (e.g. "completed").
      #
      #   @param completed_at [Time, nil] When the session completed.

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

      # @see Telnyx::Models::SessionAnalysisRetrieveResponse#root
      class Root < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Event identifier.
        #
        #   @return [String]
        required :id, String

        # @!attribute children
        #   Child events in the session tree.
        #
        #   @return [Array<Object>]
        required :children, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]

        # @!attribute cost
        #
        #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost]
        required :cost, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost }

        # @!attribute event_name
        #   Name of the event type.
        #
        #   @return [String]
        required :event_name, String

        # @!attribute links
        #
        #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links]
        required :links, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links }

        # @!attribute product
        #   Product that generated this event.
        #
        #   @return [String]
        required :product, String

        # @!attribute record
        #   The underlying detail record data. Contents vary by record type.
        #
        #   @return [Hash{Symbol=>Object}]
        required :record, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute relationship
        #   Relationship to the parent node, null for root.
        #
        #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship, nil]
        optional :relationship,
                 -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship },
                 nil?: true

        # @!method initialize(id:, children:, cost:, event_name:, links:, product:, record:, relationship: nil)
        #   @param id [String] Event identifier.
        #
        #   @param children [Array<Object>] Child events in the session tree.
        #
        #   @param cost [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost]
        #
        #   @param event_name [String] Name of the event type.
        #
        #   @param links [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links]
        #
        #   @param product [String] Product that generated this event.
        #
        #   @param record [Hash{Symbol=>Object}] The underlying detail record data. Contents vary by record type.
        #
        #   @param relationship [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship, nil] Relationship to the parent node, null for root.

        # @see Telnyx::Models::SessionAnalysisRetrieveResponse::Root#cost
        class Cost < Telnyx::Internal::Type::BaseModel
          # @!attribute cumulative_cost
          #   Cumulative cost including all descendants.
          #
          #   @return [String]
          required :cumulative_cost, String

          # @!attribute currency
          #   ISO 4217 currency code.
          #
          #   @return [String]
          required :currency, String

          # @!attribute event_cost
          #   Cost of this individual event.
          #
          #   @return [String]
          required :event_cost, String

          # @!method initialize(cumulative_cost:, currency:, event_cost:)
          #   @param cumulative_cost [String] Cumulative cost including all descendants.
          #
          #   @param currency [String] ISO 4217 currency code.
          #
          #   @param event_cost [String] Cost of this individual event.
        end

        # @see Telnyx::Models::SessionAnalysisRetrieveResponse::Root#links
        class Links < Telnyx::Internal::Type::BaseModel
          # @!attribute records
          #   Link to the underlying detail records.
          #
          #   @return [String]
          required :records, String

          # @!attribute self_
          #   Link to this session analysis node.
          #
          #   @return [String]
          required :self_, String, api_name: :self

          # @!method initialize(records:, self_:)
          #   @param records [String] Link to the underlying detail records.
          #
          #   @param self_ [String] Link to this session analysis node.
        end

        # @see Telnyx::Models::SessionAnalysisRetrieveResponse::Root#relationship
        class Relationship < Telnyx::Internal::Type::BaseModel
          # @!attribute parent_id
          #   Identifier of the parent event.
          #
          #   @return [String]
          required :parent_id, String

          # @!attribute type
          #   Relationship type identifier.
          #
          #   @return [String]
          required :type, String

          # @!attribute via
          #
          #   @return [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via]
          required :via, -> { Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via }

          # @!method initialize(parent_id:, type:, via:)
          #   Relationship to the parent node, null for root.
          #
          #   @param parent_id [String] Identifier of the parent event.
          #
          #   @param type [String] Relationship type identifier.
          #
          #   @param via [Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via]

          # @see Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship#via
          class Via < Telnyx::Internal::Type::BaseModel
            # @!attribute local_field
            #   Field name on the child record.
            #
            #   @return [String]
            required :local_field, String

            # @!attribute parent_field
            #   Field name on the parent record.
            #
            #   @return [String]
            required :parent_field, String

            # @!method initialize(local_field:, parent_field:)
            #   @param local_field [String] Field name on the child record.
            #
            #   @param parent_field [String] Field name on the parent record.
          end
        end
      end
    end
  end
end
