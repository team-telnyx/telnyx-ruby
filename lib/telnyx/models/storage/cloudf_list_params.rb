# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Cloudfs#list
      class CloudfListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_name
        #   Return only the filesystem whose name matches exactly.
        #
        #   @return [String, nil]
        optional :filter_name, String

        # @!attribute filter_region
        #   Return only filesystems in this region.
        #
        #   @return [String, nil]
        optional :filter_region, String

        # @!attribute filter_status
        #   Return only filesystems with this status. Unrecognized values are ignored.
        #
        #   @return [Symbol, Telnyx::Models::Storage::CloudfListParams::FilterStatus, nil]
        optional :filter_status, enum: -> { Telnyx::Storage::CloudfListParams::FilterStatus }

        # @!attribute page_after
        #   Opaque cursor from a previous response's `meta.cursors.after`; returns the page
        #   after it. Mutually exclusive with `page[before]`.
        #
        #   @return [String, nil]
        optional :page_after, String

        # @!attribute page_before
        #   Opaque cursor from a previous response's `meta.cursors.before`; returns the page
        #   before it. Mutually exclusive with `page[after]`.
        #
        #   @return [String, nil]
        optional :page_before, String

        # @!attribute page_limit
        #   The number of filesystems to return per page. Values above 250 are treated
        #   as 250.
        #
        #   @return [Integer, nil]
        optional :page_limit, Integer

        # @!attribute sort
        #   Sort order for the results: a field name for ascending, or the field name
        #   prefixed with `-` for descending.
        #
        #   @return [Symbol, Telnyx::Models::Storage::CloudfListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::Storage::CloudfListParams::Sort }

        # @!method initialize(filter_name: nil, filter_region: nil, filter_status: nil, page_after: nil, page_before: nil, page_limit: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::CloudfListParams} for more details.
        #
        #   @param filter_name [String] Return only the filesystem whose name matches exactly.
        #
        #   @param filter_region [String] Return only filesystems in this region.
        #
        #   @param filter_status [Symbol, Telnyx::Models::Storage::CloudfListParams::FilterStatus] Return only filesystems with this status. Unrecognized values are ignored.
        #
        #   @param page_after [String] Opaque cursor from a previous response's `meta.cursors.after`; returns the page
        #
        #   @param page_before [String] Opaque cursor from a previous response's `meta.cursors.before`; returns the page
        #
        #   @param page_limit [Integer] The number of filesystems to return per page. Values above 250 are treated as 25
        #
        #   @param sort [Symbol, Telnyx::Models::Storage::CloudfListParams::Sort] Sort order for the results: a field name for ascending, or the field name prefix
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Return only filesystems with this status. Unrecognized values are ignored.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          PROVISIONING = :provisioning
          READY = :ready
          NEEDS_FORMAT = :needs_format
          DELETING = :deleting
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sort order for the results: a field name for ascending, or the field name
        # prefixed with `-` for descending.
        module Sort
          extend Telnyx::Internal::Type::Enum

          CREATED_AT = :created_at
          CREATED_AT_DESC = :"-created_at"
          UPDATED_AT = :updated_at
          UPDATED_AT_DESC = :"-updated_at"
          NAME = :name
          NAME_DESC = :"-name"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
