# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserAddresses#list
    class UserAddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[customer_reference][eq], filter[customer_reference][contains],
      #   filter[street_address][contains]
      #
      #   @return [Telnyx::Models::UserAddressListParams::Filter, nil]
      optional :filter, -> { Telnyx::UserAddressListParams::Filter }

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
      #   To have the results sorted in descending order add the <code> -</code>
      #   prefix.<br/><br/> That is: <ul>
      #
      #     <li>
      #       <code>street_address</code>: sorts the result by the
      #       <code>street_address</code> field in ascending order.
      #     </li>
      #
      #     <li>
      #       <code>-street_address</code>: sorts the result by the
      #       <code>street_address</code> field in descending order.
      #     </li>
      #   </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      #
      #   @return [Symbol, Telnyx::Models::UserAddressListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::UserAddressListParams::Sort }

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UserAddressListParams} for more details.
      #
      #   @param filter [Telnyx::Models::UserAddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[customer_re
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Symbol, Telnyx::Models::UserAddressListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute customer_reference
        #   Filter user addresses via the customer reference. Supports both exact matching
        #   (eq) and partial matching (contains). Matching is not case-sensitive.
        #
        #   @return [Telnyx::Models::UserAddressListParams::Filter::CustomerReference, nil]
        optional :customer_reference, -> { Telnyx::UserAddressListParams::Filter::CustomerReference }

        # @!attribute street_address
        #   Filter user addresses via street address. Supports partial matching (contains).
        #   Matching is not case-sensitive.
        #
        #   @return [Telnyx::Models::UserAddressListParams::Filter::StreetAddress, nil]
        optional :street_address, -> { Telnyx::UserAddressListParams::Filter::StreetAddress }

        # @!method initialize(customer_reference: nil, street_address: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::UserAddressListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[customer_reference][eq], filter[customer_reference][contains],
        #   filter[street_address][contains]
        #
        #   @param customer_reference [Telnyx::Models::UserAddressListParams::Filter::CustomerReference] Filter user addresses via the customer reference. Supports both exact matching (
        #
        #   @param street_address [Telnyx::Models::UserAddressListParams::Filter::StreetAddress] Filter user addresses via street address. Supports partial matching (contains).

        # @see Telnyx::Models::UserAddressListParams::Filter#customer_reference
        class CustomerReference < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, user addresses with <code>customer_reference</code> containing the
          #   given value will be returned. Matching is not case-sensitive.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!attribute eq
          #   Filter user addresses via exact customer reference match. Matching is not
          #   case-sensitive.
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(contains: nil, eq: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::UserAddressListParams::Filter::CustomerReference} for more
          #   details.
          #
          #   Filter user addresses via the customer reference. Supports both exact matching
          #   (eq) and partial matching (contains). Matching is not case-sensitive.
          #
          #   @param contains [String] If present, user addresses with <code>customer_reference</code> containing the g
          #
          #   @param eq [String] Filter user addresses via exact customer reference match. Matching is not case-s
        end

        # @see Telnyx::Models::UserAddressListParams::Filter#street_address
        class StreetAddress < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, user addresses with <code>street_address</code> containing the given
          #   value will be returned. Matching is not case-sensitive. Requires at least three
          #   characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::UserAddressListParams::Filter::StreetAddress} for more details.
          #
          #   Filter user addresses via street address. Supports partial matching (contains).
          #   Matching is not case-sensitive.
          #
          #   @param contains [String] If present, user addresses with <code>street_address</code> containing the given
        end
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>street_address</code>: sorts the result by the
      #     <code>street_address</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-street_address</code>: sorts the result by the
      #     <code>street_address</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        FIRST_NAME = :first_name
        LAST_NAME = :last_name
        BUSINESS_NAME = :business_name
        STREET_ADDRESS = :street_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
