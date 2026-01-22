# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::FqdnConnections#list
    class FqdnConnectionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[connection_name], filter[fqdn], filter[outbound_voice_profile_id],
      #   filter[outbound.outbound_voice_profile_id]
      #
      #   @return [Telnyx::Models::FqdnConnectionListParams::Filter, nil]
      optional :filter, -> { Telnyx::FqdnConnectionListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::FqdnConnectionListParams::Page, nil]
      optional :page, -> { Telnyx::FqdnConnectionListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results. By default sorting direction is ascending.
      #   To have the results sorted in descending order add the <code> -</code>
      #   prefix.<br/><br/> That is: <ul>
      #
      #     <li>
      #       <code>connection_name</code>: sorts the result by the
      #       <code>connection_name</code> field in ascending order.
      #     </li>
      #
      #     <li>
      #       <code>-connection_name</code>: sorts the result by the
      #       <code>connection_name</code> field in descending order.
      #     </li>
      #   </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      #
      #   @return [Symbol, Telnyx::Models::FqdnConnectionListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::FqdnConnectionListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FqdnConnectionListParams} for more details.
      #
      #   @param filter [Telnyx::Models::FqdnConnectionListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      #   filter[connection\_
      #
      #   @param page [Telnyx::Models::FqdnConnectionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param sort [Symbol, Telnyx::Models::FqdnConnectionListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute connection_name
        #   Filter by connection_name using nested operations
        #
        #   @return [Telnyx::Models::FqdnConnectionListParams::Filter::ConnectionName, nil]
        optional :connection_name, -> { Telnyx::FqdnConnectionListParams::Filter::ConnectionName }

        # @!attribute fqdn
        #   If present, connections with an `fqdn` that equals the given value will be
        #   returned. Matching is case-sensitive, and the full string must match.
        #
        #   @return [String, nil]
        optional :fqdn, String

        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!method initialize(connection_name: nil, fqdn: nil, outbound_voice_profile_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::FqdnConnectionListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[connection_name], filter[fqdn], filter[outbound_voice_profile_id],
        #   filter[outbound.outbound_voice_profile_id]
        #
        #   @param connection_name [Telnyx::Models::FqdnConnectionListParams::Filter::ConnectionName] Filter by connection_name using nested operations
        #
        #   @param fqdn [String] If present, connections with an `fqdn` that equals the given value will be retur
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.

        # @see Telnyx::Models::FqdnConnectionListParams::Filter#connection_name
        class ConnectionName < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, connections with <code>connection_name</code> containing the given
          #   value will be returned. Matching is not case-sensitive. Requires at least three
          #   characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::FqdnConnectionListParams::Filter::ConnectionName} for more
          #   details.
          #
          #   Filter by connection_name using nested operations
          #
          #   @param contains [String] If present, connections with <code>connection_name</code> containing the given v
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>connection_name</code>: sorts the result by the
      #     <code>connection_name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-connection_name</code>: sorts the result by the
      #     <code>connection_name</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        CONNECTION_NAME = :connection_name
        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
