# typed: strong

module Telnyx
  module Models
    class SessionAnalysisRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SessionAnalysisRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::SessionAnalysisRetrieveResponse::Cost) }
      attr_reader :cost

      sig do
        params(
          cost: Telnyx::Models::SessionAnalysisRetrieveResponse::Cost::OrHash
        ).void
      end
      attr_writer :cost

      # When the session started.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Telnyx::Models::SessionAnalysisRetrieveResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::SessionAnalysisRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig { returns(Telnyx::Models::SessionAnalysisRetrieveResponse::Root) }
      attr_reader :root

      sig do
        params(
          root: Telnyx::Models::SessionAnalysisRetrieveResponse::Root::OrHash
        ).void
      end
      attr_writer :root

      # Identifier for the analyzed session.
      sig { returns(String) }
      attr_accessor :session_id

      # Analysis status (e.g. "completed").
      sig { returns(String) }
      attr_accessor :status

      # When the session completed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :completed_at

      sig do
        params(
          cost: Telnyx::Models::SessionAnalysisRetrieveResponse::Cost::OrHash,
          created_at: Time,
          meta: Telnyx::Models::SessionAnalysisRetrieveResponse::Meta::OrHash,
          root: Telnyx::Models::SessionAnalysisRetrieveResponse::Root::OrHash,
          session_id: String,
          status: String,
          completed_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        cost:,
        # When the session started.
        created_at:,
        meta:,
        root:,
        # Identifier for the analyzed session.
        session_id:,
        # Analysis status (e.g. "completed").
        status:,
        # When the session completed.
        completed_at: nil
      )
      end

      sig do
        override.returns(
          {
            cost: Telnyx::Models::SessionAnalysisRetrieveResponse::Cost,
            created_at: Time,
            meta: Telnyx::Models::SessionAnalysisRetrieveResponse::Meta,
            root: Telnyx::Models::SessionAnalysisRetrieveResponse::Root,
            session_id: String,
            status: String,
            completed_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class Cost < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SessionAnalysisRetrieveResponse::Cost,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO 4217 currency code.
        sig { returns(String) }
        attr_accessor :currency

        # Total session cost as a decimal string.
        sig { returns(String) }
        attr_accessor :total

        sig do
          params(currency: String, total: String).returns(T.attached_class)
        end
        def self.new(
          # ISO 4217 currency code.
          currency:,
          # Total session cost as a decimal string.
          total:
        )
        end

        sig { override.returns({ currency: String, total: String }) }
        def to_hash
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SessionAnalysisRetrieveResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Total number of events in the session tree.
        sig { returns(Integer) }
        attr_accessor :event_count

        # List of distinct products involved in the session.
        sig { returns(T::Array[String]) }
        attr_accessor :products

        sig do
          params(event_count: Integer, products: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Total number of events in the session tree.
          event_count:,
          # List of distinct products involved in the session.
          products:
        )
        end

        sig do
          override.returns({ event_count: Integer, products: T::Array[String] })
        end
        def to_hash
        end
      end

      class Root < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SessionAnalysisRetrieveResponse::Root,
              Telnyx::Internal::AnyHash
            )
          end

        # Event identifier.
        sig { returns(String) }
        attr_accessor :id

        # Child events in the session tree.
        sig { returns(T::Array[T.anything]) }
        attr_accessor :children

        sig do
          returns(Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost)
        end
        attr_reader :cost

        sig do
          params(
            cost:
              Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost::OrHash
          ).void
        end
        attr_writer :cost

        # Name of the event type.
        sig { returns(String) }
        attr_accessor :event_name

        sig do
          returns(Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links)
        end
        attr_reader :links

        sig do
          params(
            links:
              Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links::OrHash
          ).void
        end
        attr_writer :links

        # Product that generated this event.
        sig { returns(String) }
        attr_accessor :product

        # The underlying detail record data. Contents vary by record type.
        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :record

        # Relationship to the parent node, null for root.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship
            )
          )
        end
        attr_reader :relationship

        sig do
          params(
            relationship:
              T.nilable(
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::OrHash
              )
          ).void
        end
        attr_writer :relationship

        sig do
          params(
            id: String,
            children: T::Array[T.anything],
            cost:
              Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost::OrHash,
            event_name: String,
            links:
              Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links::OrHash,
            product: String,
            record: T::Hash[Symbol, T.anything],
            relationship:
              T.nilable(
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::OrHash
              )
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
              children: T::Array[T.anything],
              cost: Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost,
              event_name: String,
              links:
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links,
              product: String,
              record: T::Hash[Symbol, T.anything],
              relationship:
                T.nilable(
                  Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship
                )
            }
          )
        end
        def to_hash
        end

        class Cost < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Cost,
                Telnyx::Internal::AnyHash
              )
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
              T.any(
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Links,
                Telnyx::Internal::AnyHash
              )
            end

          # Link to the underlying detail records.
          sig { returns(String) }
          attr_accessor :records

          # Link to this session analysis node.
          sig { returns(String) }
          attr_accessor :self_

          sig do
            params(records: String, self_: String).returns(T.attached_class)
          end
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
              T.any(
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifier of the parent event.
          sig { returns(String) }
          attr_accessor :parent_id

          # Relationship type identifier.
          sig { returns(String) }
          attr_accessor :type

          sig do
            returns(
              Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via
            )
          end
          attr_reader :via

          sig do
            params(
              via:
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via::OrHash
            ).void
          end
          attr_writer :via

          # Relationship to the parent node, null for root.
          sig do
            params(
              parent_id: String,
              type: String,
              via:
                Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via::OrHash
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
                via:
                  Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via
              }
            )
          end
          def to_hash
          end

          class Via < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::SessionAnalysisRetrieveResponse::Root::Relationship::Via,
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
end
