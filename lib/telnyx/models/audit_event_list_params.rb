# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AuditEvents#list
    class AuditEventListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[created_before], filter[created_after]
      #
      #   @return [Telnyx::Models::AuditEventListParams::Filter, nil]
      optional :filter, -> { Telnyx::AuditEventListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Set the order of the results by the creation date.
      #
      #   @return [Symbol, Telnyx::Models::AuditEventListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::AuditEventListParams::Sort }

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AuditEventListParams} for more details.
      #
      #   @param filter [Telnyx::Models::AuditEventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[created_bef
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Symbol, Telnyx::Models::AuditEventListParams::Sort] Set the order of the results by the creation date.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_after
        #   Filter for audit events created after a specific date.
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_before
        #   Filter for audit events created before a specific date.
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!method initialize(created_after: nil, created_before: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[created_before], filter[created_after]
        #
        #   @param created_after [Time] Filter for audit events created after a specific date.
        #
        #   @param created_before [Time] Filter for audit events created before a specific date.
      end

      # Set the order of the results by the creation date.
      module Sort
        extend Telnyx::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
