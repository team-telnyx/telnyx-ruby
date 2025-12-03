# typed: strong

module Telnyx
  module Resources
    class DynamicEmergencyAddresses
      # Creates a dynamic emergency address.
      sig do
        params(
          administrative_area: String,
          country_code: Telnyx::DynamicEmergencyAddress::CountryCode::OrSymbol,
          house_number: String,
          locality: String,
          postal_code: String,
          street_name: String,
          extended_address: String,
          house_suffix: String,
          street_post_directional: String,
          street_pre_directional: String,
          street_suffix: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DynamicEmergencyAddressCreateResponse)
      end
      def create(
        administrative_area:,
        country_code:,
        house_number:,
        locality:,
        postal_code:,
        street_name:,
        extended_address: nil,
        house_suffix: nil,
        street_post_directional: nil,
        street_pre_directional: nil,
        street_suffix: nil,
        request_options: {}
      )
      end

      # Returns the dynamic emergency address based on the ID provided
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DynamicEmergencyAddressRetrieveResponse)
      end
      def retrieve(
        # Dynamic Emergency Address id
        id,
        request_options: {}
      )
      end

      # Returns the dynamic emergency addresses according to filters
      sig do
        params(
          filter: Telnyx::DynamicEmergencyAddressListParams::Filter::OrHash,
          page: Telnyx::DynamicEmergencyAddressListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[Telnyx::DynamicEmergencyAddress]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[country_code]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Deletes the dynamic emergency address based on the ID provided
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DynamicEmergencyAddressDeleteResponse)
      end
      def delete(
        # Dynamic Emergency Address id
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
