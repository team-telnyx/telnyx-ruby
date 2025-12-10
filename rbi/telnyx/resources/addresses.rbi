# typed: strong

module Telnyx
  module Resources
    class Addresses
      sig { returns(Telnyx::Resources::Addresses::Actions) }
      attr_reader :actions

      # Creates an address.
      sig do
        params(
          business_name: String,
          country_code: String,
          first_name: String,
          last_name: String,
          locality: String,
          street_address: String,
          address_book: T::Boolean,
          administrative_area: String,
          borough: String,
          customer_reference: String,
          extended_address: String,
          neighborhood: String,
          phone_number: String,
          postal_code: String,
          validate_address: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AddressCreateResponse)
      end
      def create(
        # The business name associated with the address. An address must have either a
        # first last name or a business name.
        business_name:,
        # The two-character (ISO 3166-1 alpha-2) country code of the address.
        country_code:,
        # The first name associated with the address. An address must have either a first
        # last name or a business name.
        first_name:,
        # The last name associated with the address. An address must have either a first
        # last name or a business name.
        last_name:,
        # The locality of the address. For US addresses, this corresponds to the city of
        # the address.
        locality:,
        # The primary street address information about the address.
        street_address:,
        # Indicates whether or not the address should be considered part of your list of
        # addresses that appear for regular use.
        address_book: nil,
        # The locality of the address. For US addresses, this corresponds to the state of
        # the address.
        administrative_area: nil,
        # The borough of the address. This field is not used for addresses in the US but
        # is used for some international addresses.
        borough: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Additional street address information about the address such as, but not limited
        # to, unit number or apartment number.
        extended_address: nil,
        # The neighborhood of the address. This field is not used for addresses in the US
        # but is used for some international addresses.
        neighborhood: nil,
        # The phone number associated with the address.
        phone_number: nil,
        # The postal code of the address.
        postal_code: nil,
        # Indicates whether or not the address should be validated for emergency use upon
        # creation or not. This should be left with the default value of `true` unless you
        # have used the `/addresses/actions/validate` endpoint to validate the address
        # separately prior to creation. If an address is not validated for emergency use
        # upon creation and it is not valid, it will not be able to be used for emergency
        # services.
        validate_address: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing address.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AddressRetrieveResponse)
      end
      def retrieve(
        # address ID
        id,
        request_options: {}
      )
      end

      # Returns a list of your addresses.
      sig do
        params(
          filter: Telnyx::AddressListParams::Filter::OrHash,
          page: Telnyx::AddressListParams::Page::OrHash,
          sort: Telnyx::AddressListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AddressListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference][eq], filter[customer_reference][contains],
        # filter[used_as_emergency], filter[street_address][contains],
        # filter[address_book][eq]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
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
        sort: nil,
        request_options: {}
      )
      end

      # Deletes an existing address.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AddressDeleteResponse)
      end
      def delete(
        # address ID
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
