# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Tunnels#list
    class TunnelListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[name],
      #   filter[status]
      #
      #   @return [Telnyx::Models::TunnelListParams::Filter, nil]
      optional :filter, -> { Telnyx::TunnelListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[after],
      #   page[limit]
      #
      #   @return [Telnyx::Models::TunnelListParams::Page, nil]
      optional :page, -> { Telnyx::TunnelListParams::Page }

      # @!attribute sort
      #   Sorts the results by a field, ascending, or descending with a leading `-`. The
      #   default is `-created_at`.
      #
      #   @return [Symbol, Telnyx::Models::TunnelListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::TunnelListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TunnelListParams} for more details.
      #
      #   @param filter [Telnyx::Models::TunnelListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name], filt
      #
      #   @param page [Telnyx::Models::TunnelListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[li
      #
      #   @param sort [Symbol, Telnyx::Models::TunnelListParams::Sort] Sorts the results by a field, ascending, or descending with a leading `-`. The d
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the tunnel.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute status
        #   The status of the tunnel.
        #
        #   @return [Symbol, Telnyx::Models::TunnelListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::TunnelListParams::Filter::Status }

        # @!method initialize(name: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[name],
        #   filter[status]
        #
        #   @param name [String] The name of the tunnel.
        #
        #   @param status [Symbol, Telnyx::Models::TunnelListParams::Filter::Status] The status of the tunnel.

        # The status of the tunnel.
        #
        # @see Telnyx::Models::TunnelListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          INACTIVE = :inactive
          HEALTHY = :healthy
          DEGRADED = :degraded

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute after
        #   The cursor from `meta.cursors.after` of the previous page.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The number of results per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, limit: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[after],
        #   page[limit]
        #
        #   @param after [String] The cursor from `meta.cursors.after` of the previous page.
        #
        #   @param limit [Integer] The number of results per page.
      end

      # Sorts the results by a field, ascending, or descending with a leading `-`. The
      # default is `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        NAME = :name
        NAME_DESC = :"-name"
        STATUS = :status
        STATUS_DESC = :"-status"
        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"
        UPDATED_AT = :updated_at
        UPDATED_AT_DESC = :"-updated_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
