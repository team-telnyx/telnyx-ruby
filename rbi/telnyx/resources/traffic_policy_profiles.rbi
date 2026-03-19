# typed: strong

module Telnyx
  module Resources
    # Traffic Policy Profiles operations
    class TrafficPolicyProfiles
      # Create a new traffic policy profile. At least one of `services`, `ip_ranges`, or
      # `domains` must be provided.
      sig do
        params(
          type: Telnyx::TrafficPolicyProfileCreateParams::Type::OrSymbol,
          domains: T::Array[String],
          ip_ranges: T::Array[String],
          limit_bw_kbps:
            Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps::OrInteger,
          services: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TrafficPolicyProfileCreateResponse)
      end
      def create(
        # The type of the traffic policy profile.
        type:,
        # Array of domain names.
        domains: nil,
        # Array of IP ranges in CIDR notation.
        ip_ranges: nil,
        # Bandwidth limit in kbps. Must be 512 or 1024.
        limit_bw_kbps: nil,
        # Array of PCEF service IDs to include in the profile.
        services: nil,
        request_options: {}
      )
      end

      # Returns the details regarding a specific traffic policy profile.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TrafficPolicyProfileRetrieveResponse)
      end
      def retrieve(
        # Identifies the traffic policy profile.
        id,
        request_options: {}
      )
      end

      # Updates a traffic policy profile.
      sig do
        params(
          id: String,
          domains: T::Array[String],
          ip_ranges: T::Array[String],
          limit_bw_kbps:
            T.nilable(
              Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps::OrInteger
            ),
          services: T::Array[String],
          type: Telnyx::TrafficPolicyProfileUpdateParams::Type::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TrafficPolicyProfileUpdateResponse)
      end
      def update(
        # Identifies the traffic policy profile.
        id,
        # Array of domain names.
        domains: nil,
        # Array of IP ranges in CIDR notation.
        ip_ranges: nil,
        # Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
        limit_bw_kbps: nil,
        # Array of PCEF service IDs to include in the profile.
        services: nil,
        # The type of the traffic policy profile.
        type: nil,
        request_options: {}
      )
      end

      # Get all traffic policy profiles belonging to the user that match the given
      # filters.
      sig do
        params(
          filter_service: String,
          filter_type:
            Telnyx::TrafficPolicyProfileListParams::FilterType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::TrafficPolicyProfileListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::TrafficPolicyProfileListResponse
          ]
        )
      end
      def list(
        # Filter by service ID.
        filter_service: nil,
        # Filter by traffic policy profile type.
        filter_type: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        # Sorts traffic policy profiles by the given field. Defaults to ascending order
        # unless field is prefixed with a minus sign.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes the traffic policy profile.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TrafficPolicyProfileDeleteResponse)
      end
      def delete(
        # Identifies the traffic policy profile.
        id,
        request_options: {}
      )
      end

      # Get all available PCEF services that can be used in traffic policy profiles.
      sig do
        params(
          filter_group: String,
          filter_name: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::TrafficPolicyProfileListServicesResponse
          ]
        )
      end
      def list_services(
        # Filter services by group.
        filter_group: nil,
        # Filter services by name.
        filter_name: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
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
