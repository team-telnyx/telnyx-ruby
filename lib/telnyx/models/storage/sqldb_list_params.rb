# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Sqldbs#list
      class SqldbListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_name
        #   Filter by exact name match.
        #
        #   @return [String, nil]
        optional :filter_name, String

        # @!attribute filter_status
        #   Filter by provisioning status.
        #
        #   @return [Symbol, Telnyx::Models::Storage::SqldbListParams::FilterStatus, nil]
        optional :filter_status, enum: -> { Telnyx::Storage::SqldbListParams::FilterStatus }

        # @!attribute page_number
        #   The page number to load.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   The size of the page. Values above 250 are treated as 250.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute sort
        #   Sort field; prefix with `-` for descending order.
        #
        #   @return [Symbol, Telnyx::Models::Storage::SqldbListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::Storage::SqldbListParams::Sort }

        # @!method initialize(filter_name: nil, filter_status: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   @param filter_name [String] Filter by exact name match.
        #
        #   @param filter_status [Symbol, Telnyx::Models::Storage::SqldbListParams::FilterStatus] Filter by provisioning status.
        #
        #   @param page_number [Integer] The page number to load.
        #
        #   @param page_size [Integer] The size of the page. Values above 250 are treated as 250.
        #
        #   @param sort [Symbol, Telnyx::Models::Storage::SqldbListParams::Sort] Sort field; prefix with `-` for descending order.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Filter by provisioning status.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          PROVISION_OK = :provision_ok
          PROVISION_FAILED = :provision_failed
          DELETING = :deleting
          DELETE_FAILED = :delete_failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sort field; prefix with `-` for descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          NAME = :name
          NAME_DESC = :"-name"
          STATUS = :status
          STATUS_DESC = :"-status"
          CREATED_AT = :created_at
          CREATED_AT_DESC = :"-created_at"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
