# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AuthenticationProviders#list
    class AuthenticationProviderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::AuthenticationProviderListParams::Page, nil]
      optional :page, -> { Telnyx::AuthenticationProviderListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results. By default sorting direction is ascending.
      #   To have the results sorted in descending order add the <code>-</code>
      #   prefix.<br/><br/> That is: <ul>
      #
      #     <li>
      #       <code>name</code>: sorts the result by the
      #       <code>name</code> field in ascending order.
      #     </li>
      #     <li>
      #       <code>-name</code>: sorts the result by the
      #       <code>name</code> field in descending order.
      #     </li>
      #   </ul><br/>If not given, results are sorted by <code>created_at</code> in descending order.
      #
      #   @return [Symbol, Telnyx::Models::AuthenticationProviderListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::AuthenticationProviderListParams::Sort }

      # @!method initialize(page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AuthenticationProviderListParams} for more details.
      #
      #   @param page [Telnyx::Models::AuthenticationProviderListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param sort [Symbol, Telnyx::Models::AuthenticationProviderListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code>-</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>name</code>: sorts the result by the
      #     <code>name</code> field in ascending order.
      #   </li>
      #   <li>
      #     <code>-name</code>: sorts the result by the
      #     <code>name</code> field in descending order.
      #   </li>
      # </ul><br/>If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        NAME = :name
        NAME_DESC = :"-name"
        SHORT_NAME = :short_name
        SHORT_NAME_DESC = :"-short_name"
        ACTIVE = :active
        ACTIVE_DESC = :"-active"
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
