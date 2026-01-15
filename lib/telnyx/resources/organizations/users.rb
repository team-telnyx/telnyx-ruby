# frozen_string_literal: true

module Telnyx
  module Resources
    class Organizations
      class Users
        # @return [Telnyx::Resources::Organizations::Users::Actions]
        attr_reader :actions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Organizations::UserRetrieveParams} for more details.
        #
        # Returns a user in your organization.
        #
        # @overload retrieve(id, include_groups: nil, request_options: {})
        #
        # @param id [String] Organization User ID
        #
        # @param include_groups [Boolean] When set to true, includes the groups array for each user in the response. The g
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Organizations::UserRetrieveResponse]
        #
        # @see Telnyx::Models::Organizations::UserRetrieveParams
        def retrieve(id, params = {})
          parsed, options = Telnyx::Organizations::UserRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["organizations/users/%1$s", id],
            query: parsed,
            model: Telnyx::Models::Organizations::UserRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Organizations::UserListParams} for more details.
        #
        # Returns a list of the users in your organization.
        #
        # @overload list(filter_email: nil, filter_user_status: nil, include_groups: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_email [String] Filter by email address (partial match)
        #
        # @param filter_user_status [Symbol, Telnyx::Models::Organizations::UserListParams::FilterUserStatus] Filter by user status
        #
        # @param include_groups [Boolean] When set to true, includes the groups array for each user in the response. The g
        #
        # @param page_number [Integer] The page number to load
        #
        # @param page_size [Integer] The size of the page
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Organizations::UserListResponse>]
        #
        # @see Telnyx::Models::Organizations::UserListParams
        def list(params = {})
          parsed, options = Telnyx::Organizations::UserListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "organizations/users",
            query: parsed.transform_keys(
              filter_email: "filter[email]",
              filter_user_status: "filter[user_status]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Organizations::UserListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Organizations::UserGetGroupsReportParams} for more details.
        #
        # Returns a report of all users in your organization with their group memberships.
        # This endpoint returns all users without pagination and always includes group
        # information. The report can be retrieved in JSON or CSV format by sending
        # specific content-type headers.
        #
        # @overload get_groups_report(accept: nil, request_options: {})
        #
        # @param accept [Symbol, Telnyx::Models::Organizations::UserGetGroupsReportParams::Accept] Specify the response format. Use 'application/json' for JSON format or 'text/csv
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Organizations::UserGetGroupsReportResponse]
        #
        # @see Telnyx::Models::Organizations::UserGetGroupsReportParams
        def get_groups_report(params = {})
          parsed, options = Telnyx::Organizations::UserGetGroupsReportParams.dump_request(params)
          @client.request(
            method: :get,
            path: "organizations/users/users_groups_report",
            headers: parsed.transform_keys(accept: "accept"),
            model: Telnyx::Models::Organizations::UserGetGroupsReportResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::Organizations::Users::Actions.new(client: client)
        end
      end
    end
  end
end
