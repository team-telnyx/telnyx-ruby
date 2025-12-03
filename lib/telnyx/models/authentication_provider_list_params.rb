# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AuthenticationProviders#list
    class AuthenticationProviderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

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

      # @!method initialize(page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AuthenticationProviderListParams} for more details.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Symbol, Telnyx::Models::AuthenticationProviderListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
