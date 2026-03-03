# typed: strong

module Telnyx
  module Models
    class EventNode < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::EventNode, Telnyx::Internal::AnyHash) }

      # Event identifier.
      sig { returns(String) }
      attr_accessor :id

      # Child events in the session tree.
      sig { returns(T::Array[Telnyx::EventNode]) }
      attr_accessor :children

      sig { returns(Telnyx::EventNode::Cost) }
      attr_reader :cost

      sig { params(cost: Telnyx::EventNode::Cost::OrHash).void }
      attr_writer :cost

      # Name of the event type.
      sig { returns(String) }
      attr_accessor :event_name

      sig { returns(Telnyx::EventNode::Links) }
      attr_reader :links

      sig { params(links: Telnyx::EventNode::Links::OrHash).void }
      attr_writer :links

      # Product that generated this event.
      sig { returns(String) }
      attr_accessor :product

      # The underlying detail record data. Contents vary by record type.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :record

      # Relationship to the parent node, null for root.
      sig { returns(T.nilable(Telnyx::EventNode::Relationship)) }
      attr_reader :relationship

      sig do
        params(
          relationship: T.nilable(Telnyx::EventNode::Relationship::OrHash)
        ).void
      end
      attr_writer :relationship

      sig do
        params(
          id: String,
          children: T::Array[Telnyx::EventNode],
          cost: Telnyx::EventNode::Cost::OrHash,
          event_name: String,
          links: Telnyx::EventNode::Links::OrHash,
          product: String,
          record: T::Hash[Symbol, T.anything],
          relationship: T.nilable(Telnyx::EventNode::Relationship::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Event identifier.
        id:,
        # Child events in the session tree.
        children:,
        cost:,
        # Name of the event type.
        event_name:,
        links:,
        # Product that generated this event.
        product:,
        # The underlying detail record data. Contents vary by record type.
        record:,
        # Relationship to the parent node, null for root.
        relationship: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            children: T::Array[Telnyx::EventNode],
            cost: Telnyx::EventNode::Cost,
            event_name: String,
            links: Telnyx::EventNode::Links,
            product: String,
            record: T::Hash[Symbol, T.anything],
            relationship: T.nilable(Telnyx::EventNode::Relationship)
          }
        )
      end
      def to_hash
      end

      class Cost < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EventNode::Cost, Telnyx::Internal::AnyHash)
          end

        # Cumulative cost including all descendants.
        sig { returns(String) }
        attr_accessor :cumulative_cost

        # ISO 4217 currency code.
        sig { returns(String) }
        attr_accessor :currency

        # Cost of this individual event.
        sig { returns(String) }
        attr_accessor :event_cost

        sig do
          params(
            cumulative_cost: String,
            currency: String,
            event_cost: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Cumulative cost including all descendants.
          cumulative_cost:,
          # ISO 4217 currency code.
          currency:,
          # Cost of this individual event.
          event_cost:
        )
        end

        sig do
          override.returns(
            { cumulative_cost: String, currency: String, event_cost: String }
          )
        end
        def to_hash
        end
      end

      class Links < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EventNode::Links, Telnyx::Internal::AnyHash)
          end

        # Link to the underlying detail records.
        sig { returns(String) }
        attr_accessor :records

        # Link to this session analysis node.
        sig { returns(String) }
        attr_accessor :self_

        sig { params(records: String, self_: String).returns(T.attached_class) }
        def self.new(
          # Link to the underlying detail records.
          records:,
          # Link to this session analysis node.
          self_:
        )
        end

        sig { override.returns({ records: String, self_: String }) }
        def to_hash
        end
      end

      class Relationship < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EventNode::Relationship, Telnyx::Internal::AnyHash)
          end

        # Identifier of the parent event.
        sig { returns(String) }
        attr_accessor :parent_id

        # Relationship type identifier.
        sig { returns(String) }
        attr_accessor :type

        sig { returns(Telnyx::EventNode::Relationship::Via) }
        attr_reader :via

        sig { params(via: Telnyx::EventNode::Relationship::Via::OrHash).void }
        attr_writer :via

        # Relationship to the parent node, null for root.
        sig do
          params(
            parent_id: String,
            type: String,
            via: Telnyx::EventNode::Relationship::Via::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the parent event.
          parent_id:,
          # Relationship type identifier.
          type:,
          via:
        )
        end

        sig do
          override.returns(
            {
              parent_id: String,
              type: String,
              via: Telnyx::EventNode::Relationship::Via
            }
          )
        end
        def to_hash
        end

        class Via < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EventNode::Relationship::Via,
                Telnyx::Internal::AnyHash
              )
            end

          # Field name on the child record.
          sig { returns(String) }
          attr_accessor :local_field

          # Field name on the parent record.
          sig { returns(String) }
          attr_accessor :parent_field

          sig do
            params(local_field: String, parent_field: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Field name on the child record.
            local_field:,
            # Field name on the parent record.
            parent_field:
          )
          end

          sig do
            override.returns({ local_field: String, parent_field: String })
          end
          def to_hash
          end
        end
      end
    end
  end
end
