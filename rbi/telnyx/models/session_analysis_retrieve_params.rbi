# typed: strong

module Telnyx
  module Models
    class SessionAnalysisRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SessionAnalysisRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :record_type

      sig { returns(String) }
      attr_accessor :event_id

      # ISO 8601 timestamp or date to narrow index selection for faster lookups. Accepts
      # full datetime (e.g., 2026-03-17T10:00:00Z) or date-only format (e.g.,
      # 2026-03-17).
      sig { returns(T.nilable(Time)) }
      attr_reader :date_time

      sig { params(date_time: Time).void }
      attr_writer :date_time

      # Controls what data to expand on each event node.
      sig do
        returns(
          T.nilable(Telnyx::SessionAnalysisRetrieveParams::Expand::OrSymbol)
        )
      end
      attr_reader :expand

      sig do
        params(
          expand: Telnyx::SessionAnalysisRetrieveParams::Expand::OrSymbol
        ).void
      end
      attr_writer :expand

      # Whether to include child events in the response.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_children

      sig { params(include_children: T::Boolean).void }
      attr_writer :include_children

      # Maximum traversal depth for the event tree.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_depth

      sig { params(max_depth: Integer).void }
      attr_writer :max_depth

      sig do
        params(
          record_type: String,
          event_id: String,
          date_time: Time,
          expand: Telnyx::SessionAnalysisRetrieveParams::Expand::OrSymbol,
          include_children: T::Boolean,
          max_depth: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        record_type:,
        event_id:,
        # ISO 8601 timestamp or date to narrow index selection for faster lookups. Accepts
        # full datetime (e.g., 2026-03-17T10:00:00Z) or date-only format (e.g.,
        # 2026-03-17).
        date_time: nil,
        # Controls what data to expand on each event node.
        expand: nil,
        # Whether to include child events in the response.
        include_children: nil,
        # Maximum traversal depth for the event tree.
        max_depth: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            record_type: String,
            event_id: String,
            date_time: Time,
            expand: Telnyx::SessionAnalysisRetrieveParams::Expand::OrSymbol,
            include_children: T::Boolean,
            max_depth: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Controls what data to expand on each event node.
      module Expand
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SessionAnalysisRetrieveParams::Expand)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECORD =
          T.let(
            :record,
            Telnyx::SessionAnalysisRetrieveParams::Expand::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Telnyx::SessionAnalysisRetrieveParams::Expand::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SessionAnalysisRetrieveParams::Expand::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
