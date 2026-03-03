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

      sig { returns(Telnyx::EventNode) }
      attr_reader :root

      sig { params(root: Telnyx::EventNode::OrHash).void }
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
          root: Telnyx::EventNode::OrHash,
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
            root: Telnyx::EventNode,
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
    end
  end
end
