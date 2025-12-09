# typed: strong

module Telnyx
  module Resources
    class UserAddresses
      # Creates a user address.
      sig do
        params(
          business_name: String,
          country_code: String,
          first_name: String,
          last_name: String,
          locality: String,
          street_address: String,
          administrative_area: String,
          borough: String,
          customer_reference: String,
          extended_address: String,
          neighborhood: String,
          phone_number: String,
          postal_code: String,
          skip_address_verification: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::UserAddressCreateResponse)
      end
      def create(
        # The business name associated with the user address.
        business_name:,
        # The two-character (ISO 3166-1 alpha-2) country code of the user address.
        country_code:,
        # The first name associated with the user address.
        first_name:,
        # The last name associated with the user address.
        last_name:,
        # The locality of the user address. For US addresses, this corresponds to the city
        # of the address.
        locality:,
        # The primary street address information about the user address.
        street_address:,
        # The locality of the user address. For US addresses, this corresponds to the
        # state of the address.
        administrative_area: nil,
        # The borough of the user address. This field is not used for addresses in the US
        # but is used for some international addresses.
        borough: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Additional street address information about the user address such as, but not
        # limited to, unit number or apartment number.
        extended_address: nil,
        # The neighborhood of the user address. This field is not used for addresses in
        # the US but is used for some international addresses.
        neighborhood: nil,
        # The phone number associated with the user address.
        phone_number: nil,
        # The postal code of the user address.
        postal_code: nil,
        # An optional boolean value specifying if verification of the address should be
        # skipped or not. UserAddresses are generally used for shipping addresses, and
        # failure to validate your shipping address will likely result in a failure to
        # deliver SIM cards or other items ordered from Telnyx. Do not use this parameter
        # unless you are sure that the address is correct even though it cannot be
        # validated. If this is set to any value other than true, verification of the
        # address will be attempted, and the user address will not be allowed if
        # verification fails. If verification fails but suggested values are available
        # that might make the address correct, they will be present in the response as
        # well. If this value is set to true, then the verification will not be attempted.
        # Defaults to false (verification will be performed).
        skip_address_verification: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing user address.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::UserAddressRetrieveResponse)
      end
      def retrieve(
        # user address ID
        id,
        request_options: {}
      )
      end

      # Returns a list of your user addresses.
      sig do
        params(
          filter: Telnyx::UserAddressListParams::Filter::OrHash,
          page: Telnyx::UserAddressListParams::Page::OrHash,
          sort: Telnyx::UserAddressListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultPagination[Telnyx::UserAddress])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference][eq], filter[customer_reference][contains],
        # filter[street_address][contains]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
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

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
