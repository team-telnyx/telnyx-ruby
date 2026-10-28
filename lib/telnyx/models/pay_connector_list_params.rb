# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PayConnectors#list
    class PayConnectorListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_created_at_eq
      #   Equal to this created_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_created_at_eq, String

      # @!attribute filter_created_at_gt
      #   After this created_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_created_at_gt, String

      # @!attribute filter_created_at_gte
      #   At or after this created_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_created_at_gte, String

      # @!attribute filter_created_at_lt
      #   Before this created_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_created_at_lt, String

      # @!attribute filter_created_at_lte
      #   At or before this created_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_created_at_lte, String

      # @!attribute filter_mode
      #   Exact match on mode.
      #
      #   @return [String, nil]
      optional :filter_mode, String

      # @!attribute filter_name
      #   Exact match on name.
      #
      #   @return [String, nil]
      optional :filter_name, String

      # @!attribute filter_type
      #   Exact match on type.
      #
      #   @return [String, nil]
      optional :filter_type, String

      # @!attribute filter_updated_at_eq
      #   Equal to this updated_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_updated_at_eq, String

      # @!attribute filter_updated_at_gt
      #   After this updated_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_updated_at_gt, String

      # @!attribute filter_updated_at_gte
      #   At or after this updated_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_updated_at_gte, String

      # @!attribute filter_updated_at_lt
      #   Before this updated_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_updated_at_lt, String

      # @!attribute filter_updated_at_lte
      #   At or before this updated_at timestamp.
      #
      #   @return [String, nil]
      optional :filter_updated_at_lte, String

      # @!attribute page_after
      #   Opaque cursor from meta.end_cursor.
      #
      #   @return [String, nil]
      optional :page_after, String

      # @!attribute page_before
      #   Opaque cursor from meta.start_cursor.
      #
      #   @return [String, nil]
      optional :page_before, String

      # @!attribute page_size
      #   Number of records per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Comma-separated created_at or updated_at fields, optionally prefixed with - for
      #   descending order.
      #
      #   @return [String, nil]
      optional :sort, String

      # @!method initialize(filter_created_at_eq: nil, filter_created_at_gt: nil, filter_created_at_gte: nil, filter_created_at_lt: nil, filter_created_at_lte: nil, filter_mode: nil, filter_name: nil, filter_type: nil, filter_updated_at_eq: nil, filter_updated_at_gt: nil, filter_updated_at_gte: nil, filter_updated_at_lt: nil, filter_updated_at_lte: nil, page_after: nil, page_before: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PayConnectorListParams} for more details.
      #
      #   @param filter_created_at_eq [String] Equal to this created_at timestamp.
      #
      #   @param filter_created_at_gt [String] After this created_at timestamp.
      #
      #   @param filter_created_at_gte [String] At or after this created_at timestamp.
      #
      #   @param filter_created_at_lt [String] Before this created_at timestamp.
      #
      #   @param filter_created_at_lte [String] At or before this created_at timestamp.
      #
      #   @param filter_mode [String] Exact match on mode.
      #
      #   @param filter_name [String] Exact match on name.
      #
      #   @param filter_type [String] Exact match on type.
      #
      #   @param filter_updated_at_eq [String] Equal to this updated_at timestamp.
      #
      #   @param filter_updated_at_gt [String] After this updated_at timestamp.
      #
      #   @param filter_updated_at_gte [String] At or after this updated_at timestamp.
      #
      #   @param filter_updated_at_lt [String] Before this updated_at timestamp.
      #
      #   @param filter_updated_at_lte [String] At or before this updated_at timestamp.
      #
      #   @param page_after [String] Opaque cursor from meta.end_cursor.
      #
      #   @param page_before [String] Opaque cursor from meta.start_cursor.
      #
      #   @param page_size [Integer] Number of records per page.
      #
      #   @param sort [String] Comma-separated created_at or updated_at fields, optionally prefixed with - for
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
