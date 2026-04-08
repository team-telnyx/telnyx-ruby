# frozen_string_literal: true

module Telnyx
  module Resources
    # Traffic Policy Profiles operations
    class TrafficPolicyProfiles
      # Create a new traffic policy profile. At least one of `services`, `ip_ranges`, or
      # `domains` must be provided.
      #
      # @overload create(type:, domains: nil, ip_ranges: nil, limit_bw_kbps: nil, services: nil, request_options: {})
      #
      # @param type [Symbol, Telnyx::Models::TrafficPolicyProfileCreateParams::Type] The type of the traffic policy profile.
      #
      # @param domains [Array<String>] Array of domain names.
      #
      # @param ip_ranges [Array<String>] Array of IP ranges in CIDR notation.
      #
      # @param limit_bw_kbps [Integer, Telnyx::Models::TrafficPolicyProfileCreateParams::LimitBwKbps] Bandwidth limit in kbps. Must be 512 or 1024.
      #
      # @param services [Array<String>] Array of PCEF service IDs to include in the profile.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TrafficPolicyProfileCreateResponse]
      #
      # @see Telnyx::Models::TrafficPolicyProfileCreateParams
      def create(params)
        parsed, options = Telnyx::TrafficPolicyProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "traffic_policy_profiles",
          body: parsed,
          model: Telnyx::Models::TrafficPolicyProfileCreateResponse,
          options: options
        )
      end

      # Returns the details regarding a specific traffic policy profile.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the traffic policy profile.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TrafficPolicyProfileRetrieveResponse]
      #
      # @see Telnyx::Models::TrafficPolicyProfileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["traffic_policy_profiles/%1$s", id],
          model: Telnyx::Models::TrafficPolicyProfileRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Updates a traffic policy profile.
      #
      # @overload update(id, domains: nil, ip_ranges: nil, limit_bw_kbps: nil, services: nil, type: nil, request_options: {})
      #
      # @param id [String] Identifies the traffic policy profile.
      #
      # @param domains [Array<String>] Array of domain names.
      #
      # @param ip_ranges [Array<String>] Array of IP ranges in CIDR notation.
      #
      # @param limit_bw_kbps [Integer, Telnyx::Models::TrafficPolicyProfileUpdateParams::LimitBwKbps, nil] Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
      #
      # @param services [Array<String>] Array of PCEF service IDs to include in the profile.
      #
      # @param type [Symbol, Telnyx::Models::TrafficPolicyProfileUpdateParams::Type] The type of the traffic policy profile.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TrafficPolicyProfileUpdateResponse]
      #
      # @see Telnyx::Models::TrafficPolicyProfileUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::TrafficPolicyProfileUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["traffic_policy_profiles/%1$s", id],
          body: parsed,
          model: Telnyx::Models::TrafficPolicyProfileUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TrafficPolicyProfileListParams} for more details.
      #
      # Get all traffic policy profiles belonging to the user that match the given
      # filters.
      #
      # @overload list(filter_service: nil, filter_type: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_service [String] Filter by service ID.
      #
      # @param filter_type [Symbol, Telnyx::Models::TrafficPolicyProfileListParams::FilterType] Filter by traffic policy profile type.
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param sort [Symbol, Telnyx::Models::TrafficPolicyProfileListParams::Sort] Sorts traffic policy profiles by the given field. Defaults to ascending order un
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::TrafficPolicyProfile>]
      #
      # @see Telnyx::Models::TrafficPolicyProfileListParams
      def list(params = {})
        parsed, options = Telnyx::TrafficPolicyProfileListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "traffic_policy_profiles",
          query: query.transform_keys(
            filter_service: "filter[service]",
            filter_type: "filter[type]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::TrafficPolicyProfile,
          options: options
        )
      end

      # Deletes the traffic policy profile.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the traffic policy profile.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TrafficPolicyProfileDeleteResponse]
      #
      # @see Telnyx::Models::TrafficPolicyProfileDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["traffic_policy_profiles/%1$s", id],
          model: Telnyx::Models::TrafficPolicyProfileDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get all available PCEF services that can be used in traffic policy profiles.
      #
      # @overload list_services(filter_group: nil, filter_name: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_group [String] Filter services by group.
      #
      # @param filter_name [String] Filter services by name.
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::TrafficPolicyProfileListServicesResponse>]
      #
      # @see Telnyx::Models::TrafficPolicyProfileListServicesParams
      def list_services(params = {})
        parsed, options = Telnyx::TrafficPolicyProfileListServicesParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "traffic_policy_profiles/services",
          query: query.transform_keys(
            filter_group: "filter[group]",
            filter_name: "filter[name]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::TrafficPolicyProfileListServicesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
