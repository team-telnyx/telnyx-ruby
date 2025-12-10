# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Addresses#list
    class AddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[customer_reference][eq], filter[customer_reference][contains],
      #   filter[used_as_emergency], filter[street_address][contains],
      #   filter[address_book][eq]
      #
      #   @return [Telnyx::Models::AddressListParams::Filter, nil]
      optional :filter, -> { Telnyx::AddressListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::AddressListParams::Page, nil]
      optional :page, -> { Telnyx::AddressListParams::Page }

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
      #   @return [Symbol, Telnyx::Models::AddressListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::AddressListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AddressListParams} for more details.
      #
      #   @param filter [Telnyx::Models::AddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[customer_re
      #
      #   @param page [Telnyx::Models::AddressListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param sort [Symbol, Telnyx::Models::AddressListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute address_book
        #
        #   @return [Telnyx::Models::AddressListParams::Filter::AddressBook, nil]
        optional :address_book, -> { Telnyx::AddressListParams::Filter::AddressBook }

        # @!attribute customer_reference
        #   If present, addresses with <code>customer_reference</code> containing the given
        #   value will be returned. Matching is not case-sensitive.
        #
        #   @return [String, Telnyx::Models::AddressListParams::Filter::CustomerReference::UnionMember1, nil]
        optional :customer_reference, union: -> { Telnyx::AddressListParams::Filter::CustomerReference }

        # @!attribute street_address
        #
        #   @return [Telnyx::Models::AddressListParams::Filter::StreetAddress, nil]
        optional :street_address, -> { Telnyx::AddressListParams::Filter::StreetAddress }

        # @!attribute used_as_emergency
        #   If set as 'true', only addresses used as the emergency address for at least one
        #   active phone-number will be returned. When set to 'false', the opposite happens:
        #   only addresses not used as the emergency address from phone-numbers will be
        #   returned.
        #
        #   @return [String, nil]
        optional :used_as_emergency, String

        # @!method initialize(address_book: nil, customer_reference: nil, street_address: nil, used_as_emergency: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AddressListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[customer_reference][eq], filter[customer_reference][contains],
        #   filter[used_as_emergency], filter[street_address][contains],
        #   filter[address_book][eq]
        #
        #   @param address_book [Telnyx::Models::AddressListParams::Filter::AddressBook]
        #
        #   @param customer_reference [String, Telnyx::Models::AddressListParams::Filter::CustomerReference::UnionMember1] If present, addresses with <code>customer_reference</code> containing the given
        #
        #   @param street_address [Telnyx::Models::AddressListParams::Filter::StreetAddress]
        #
        #   @param used_as_emergency [String] If set as 'true', only addresses used as the emergency address for at least one

        # @see Telnyx::Models::AddressListParams::Filter#address_book
        class AddressBook < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   If present, only returns results with the <code>address_book</code> flag equal
          #   to the given value.
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AddressListParams::Filter::AddressBook} for more details.
          #
          #   @param eq [String] If present, only returns results with the <code>address_book</code> flag equal t
        end

        # If present, addresses with <code>customer_reference</code> containing the given
        # value will be returned. Matching is not case-sensitive.
        #
        # @see Telnyx::Models::AddressListParams::Filter#customer_reference
        module CustomerReference
          extend Telnyx::Internal::Type::Union

          # If present, addresses with <code>customer_reference</code> containing the given value will be returned. Matching is not case-sensitive.
          variant String

          variant -> { Telnyx::AddressListParams::Filter::CustomerReference::UnionMember1 }

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            # @!attribute contains
            #   Partial match for customer_reference. Matching is not case-sensitive.
            #
            #   @return [String, nil]
            optional :contains, String

            # @!attribute eq
            #   Exact match for customer_reference.
            #
            #   @return [String, nil]
            optional :eq, String

            # @!method initialize(contains: nil, eq: nil)
            #   @param contains [String] Partial match for customer_reference. Matching is not case-sensitive.
            #
            #   @param eq [String] Exact match for customer_reference.
          end

          # @!method self.variants
          #   @return [Array(String, Telnyx::Models::AddressListParams::Filter::CustomerReference::UnionMember1)]
        end

        # @see Telnyx::Models::AddressListParams::Filter#street_address
        class StreetAddress < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, addresses with <code>street_address</code> containing the given
          #   value will be returned. Matching is not case-sensitive. Requires at least three
          #   characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AddressListParams::Filter::StreetAddress} for more details.
          #
          #   @param contains [String] If present, addresses with <code>street_address</code> containing the given valu
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
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
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
