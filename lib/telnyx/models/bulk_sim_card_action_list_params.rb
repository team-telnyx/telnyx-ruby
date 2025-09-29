# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BulkSimCardActions#list
    class BulkSimCardActionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_action_type
      #   Filter by action type.
      #
      #   @return [Symbol, Telnyx::Models::BulkSimCardActionListParams::FilterActionType, nil]
      optional :filter_action_type, enum: -> { Telnyx::BulkSimCardActionListParams::FilterActionType }

      # @!attribute page_number
      #   The page number to load.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   The size of the page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter_action_type: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_action_type [Symbol, Telnyx::Models::BulkSimCardActionListParams::FilterActionType] Filter by action type.
      #
      #   @param page_number [Integer] The page number to load.
      #
      #   @param page_size [Integer] The size of the page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter by action type.
      module FilterActionType
        extend Telnyx::Internal::Type::Enum

        BULK_SET_PUBLIC_IPS = :bulk_set_public_ips

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
