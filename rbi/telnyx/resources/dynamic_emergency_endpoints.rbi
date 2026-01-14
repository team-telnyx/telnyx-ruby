# typed: strong

module Telnyx
  module Resources
    class DynamicEmergencyEndpoints
      # Creates a dynamic emergency endpoints.
      sig do
        params(
          callback_number: String,
          caller_name: String,
          dynamic_emergency_address_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DynamicEmergencyEndpointCreateResponse)
      end
      def create(
        callback_number:,
        caller_name:,
        # An id of a currently active dynamic emergency location.
        dynamic_emergency_address_id:,
        request_options: {}
      )
      end

      # Returns the dynamic emergency endpoint based on the ID provided
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DynamicEmergencyEndpointRetrieveResponse)
      end
      def retrieve(
        # Dynamic Emergency Endpoint id
        id,
        request_options: {}
      )
      end

      # Returns the dynamic emergency endpoints according to filters
      sig do
        params(
          filter: Telnyx::DynamicEmergencyEndpointListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::DynamicEmergencyEndpoint
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[country_code]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Deletes the dynamic emergency endpoint based on the ID provided
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DynamicEmergencyEndpointDeleteResponse)
      end
      def delete(
        # Dynamic Emergency Endpoint id
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
