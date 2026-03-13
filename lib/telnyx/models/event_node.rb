# frozen_string_literal: true

module Telnyx
  module Models
    class EventNode < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Event identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute children
      #   Child events in the session tree.
      #
      #   @return [Array<Telnyx::Models::EventNode>]
      required :children, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EventNode] }

      # @!attribute cost
      #
      #   @return [Telnyx::Models::EventNode::Cost]
      required :cost, -> { Telnyx::EventNode::Cost }

      # @!attribute event_name
      #   Name of the event type.
      #
      #   @return [String]
      required :event_name, String

      # @!attribute links
      #
      #   @return [Telnyx::Models::EventNode::Links]
      required :links, -> { Telnyx::EventNode::Links }

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
      #   @return [Telnyx::Models::EventNode::Relationship, nil]
      optional :relationship, -> { Telnyx::EventNode::Relationship }, nil?: true

      # @!method initialize(id:, children:, cost:, event_name:, links:, product:, record:, relationship: nil)
      #   @param id [String] Event identifier.
      #
      #   @param children [Array<Telnyx::Models::EventNode>] Child events in the session tree.
      #
      #   @param cost [Telnyx::Models::EventNode::Cost]
      #
      #   @param event_name [String] Name of the event type.
      #
      #   @param links [Telnyx::Models::EventNode::Links]
      #
      #   @param product [String] Product that generated this event.
      #
      #   @param record [Hash{Symbol=>Object}] The underlying detail record data. Contents vary by record type.
      #
      #   @param relationship [Telnyx::Models::EventNode::Relationship, nil] Relationship to the parent node, null for root.

      # @see Telnyx::Models::EventNode#cost
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

      # @see Telnyx::Models::EventNode#links
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

      # @see Telnyx::Models::EventNode#relationship
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
        #   @return [Telnyx::Models::EventNode::Relationship::Via]
        required :via, -> { Telnyx::EventNode::Relationship::Via }

        # @!method initialize(parent_id:, type:, via:)
        #   Relationship to the parent node, null for root.
        #
        #   @param parent_id [String] Identifier of the parent event.
        #
        #   @param type [String] Relationship type identifier.
        #
        #   @param via [Telnyx::Models::EventNode::Relationship::Via]

        # @see Telnyx::Models::EventNode::Relationship#via
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
