# typed: strong

module Telnyx
  module Resources
    class Organizations
      class Users
        sig { returns(Telnyx::Resources::Organizations::Users::Actions) }
        attr_reader :actions

        # Returns a user in your organization.
        sig do
          params(
            id: String,
            include_groups: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Organizations::UserRetrieveResponse)
        end
        def retrieve(
          # Organization User ID
          id,
          # When set to true, includes the groups array for each user in the response. The
          # groups array contains objects with id and name for each group the user belongs
          # to.
          include_groups: nil,
          request_options: {}
        )
        end

        # Returns a list of the users in your organization.
        sig do
          params(
            filter_email: String,
            filter_user_status:
              Telnyx::Organizations::UserListParams::FilterUserStatus::OrSymbol,
            include_groups: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Organizations::UserListResponse
            ]
          )
        end
        def list(
          # Filter by email address (partial match)
          filter_email: nil,
          # Filter by user status
          filter_user_status: nil,
          # When set to true, includes the groups array for each user in the response. The
          # groups array contains objects with id and name for each group the user belongs
          # to.
          include_groups: nil,
          # The page number to load
          page_number: nil,
          # The size of the page
          page_size: nil,
          request_options: {}
        )
        end

        # Returns a report of all users in your organization with their group memberships.
        # This endpoint returns all users without pagination and always includes group
        # information. The report can be retrieved in JSON or CSV format by sending
        # specific content-type headers.
        sig do
          params(
            accept:
              Telnyx::Organizations::UserGetGroupsReportParams::Accept::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Organizations::UserGetGroupsReportResponse)
        end
        def get_groups_report(
          # Specify the response format. Use 'application/json' for JSON format or
          # 'text/csv' for CSV format.
          accept: nil,
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
end
