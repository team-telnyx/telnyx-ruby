# typed: strong

module Telnyx
  module Models
    class PayConnectorListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PayConnectorListParams, Telnyx::Internal::AnyHash)
        end

      # Equal to this created_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_created_at_eq

      sig { params(filter_created_at_eq: String).void }
      attr_writer :filter_created_at_eq

      # After this created_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_created_at_gt

      sig { params(filter_created_at_gt: String).void }
      attr_writer :filter_created_at_gt

      # At or after this created_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_created_at_gte

      sig { params(filter_created_at_gte: String).void }
      attr_writer :filter_created_at_gte

      # Before this created_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_created_at_lt

      sig { params(filter_created_at_lt: String).void }
      attr_writer :filter_created_at_lt

      # At or before this created_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_created_at_lte

      sig { params(filter_created_at_lte: String).void }
      attr_writer :filter_created_at_lte

      # Exact match on mode.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_mode

      sig { params(filter_mode: String).void }
      attr_writer :filter_mode

      # Exact match on name.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name

      sig { params(filter_name: String).void }
      attr_writer :filter_name

      # Exact match on type.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_type

      sig { params(filter_type: String).void }
      attr_writer :filter_type

      # Equal to this updated_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_updated_at_eq

      sig { params(filter_updated_at_eq: String).void }
      attr_writer :filter_updated_at_eq

      # After this updated_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_updated_at_gt

      sig { params(filter_updated_at_gt: String).void }
      attr_writer :filter_updated_at_gt

      # At or after this updated_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_updated_at_gte

      sig { params(filter_updated_at_gte: String).void }
      attr_writer :filter_updated_at_gte

      # Before this updated_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_updated_at_lt

      sig { params(filter_updated_at_lt: String).void }
      attr_writer :filter_updated_at_lt

      # At or before this updated_at timestamp.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_updated_at_lte

      sig { params(filter_updated_at_lte: String).void }
      attr_writer :filter_updated_at_lte

      # Opaque cursor from meta.end_cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :page_after

      sig { params(page_after: String).void }
      attr_writer :page_after

      # Opaque cursor from meta.start_cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :page_before

      sig { params(page_before: String).void }
      attr_writer :page_before

      # Number of records per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Comma-separated created_at or updated_at fields, optionally prefixed with - for
      # descending order.
      sig { returns(T.nilable(String)) }
      attr_reader :sort

      sig { params(sort: String).void }
      attr_writer :sort

      sig do
        params(
          filter_created_at_eq: String,
          filter_created_at_gt: String,
          filter_created_at_gte: String,
          filter_created_at_lt: String,
          filter_created_at_lte: String,
          filter_mode: String,
          filter_name: String,
          filter_type: String,
          filter_updated_at_eq: String,
          filter_updated_at_gt: String,
          filter_updated_at_gte: String,
          filter_updated_at_lt: String,
          filter_updated_at_lte: String,
          page_after: String,
          page_before: String,
          page_size: Integer,
          sort: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Equal to this created_at timestamp.
        filter_created_at_eq: nil,
        # After this created_at timestamp.
        filter_created_at_gt: nil,
        # At or after this created_at timestamp.
        filter_created_at_gte: nil,
        # Before this created_at timestamp.
        filter_created_at_lt: nil,
        # At or before this created_at timestamp.
        filter_created_at_lte: nil,
        # Exact match on mode.
        filter_mode: nil,
        # Exact match on name.
        filter_name: nil,
        # Exact match on type.
        filter_type: nil,
        # Equal to this updated_at timestamp.
        filter_updated_at_eq: nil,
        # After this updated_at timestamp.
        filter_updated_at_gt: nil,
        # At or after this updated_at timestamp.
        filter_updated_at_gte: nil,
        # Before this updated_at timestamp.
        filter_updated_at_lt: nil,
        # At or before this updated_at timestamp.
        filter_updated_at_lte: nil,
        # Opaque cursor from meta.end_cursor.
        page_after: nil,
        # Opaque cursor from meta.start_cursor.
        page_before: nil,
        # Number of records per page.
        page_size: nil,
        # Comma-separated created_at or updated_at fields, optionally prefixed with - for
        # descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_created_at_eq: String,
            filter_created_at_gt: String,
            filter_created_at_gte: String,
            filter_created_at_lt: String,
            filter_created_at_lte: String,
            filter_mode: String,
            filter_name: String,
            filter_type: String,
            filter_updated_at_eq: String,
            filter_updated_at_gt: String,
            filter_updated_at_gte: String,
            filter_updated_at_lt: String,
            filter_updated_at_lte: String,
            page_after: String,
            page_before: String,
            page_size: Integer,
            sort: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
