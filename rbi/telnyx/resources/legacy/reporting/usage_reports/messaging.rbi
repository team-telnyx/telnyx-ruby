# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          class Messaging
            # Creates a new legacy usage V2 MDR report request with the specified filters
            sig do
              params(
                aggregation_type: Integer,
                end_time: Time,
                managed_accounts: T::Array[String],
                profiles: T::Array[String],
                select_all_managed_accounts: T::Boolean,
                start_time: Time,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::MessagingCreateResponse
              )
            end
            def create(
              # Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
              aggregation_type:,
              end_time: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # List of messaging profile IDs to filter by
              profiles: nil,
              select_all_managed_accounts: nil,
              start_time: nil,
              request_options: {}
            )
            end

            # Fetch single MDR usage report by id.
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::MessagingRetrieveResponse
              )
            end
            def retrieve(id, request_options: {})
            end

            # Fetch all previous requests for MDR usage reports.
            sig do
              params(
                page: Integer,
                per_page: Integer,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse
              )
            end
            def list(
              # Page number
              page: nil,
              # Size of the page
              per_page: nil,
              request_options: {}
            )
            end

            # Deletes a specific V2 legacy usage MDR report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse
              )
            end
            def delete(id, request_options: {})
            end

            # @api private
            sig { params(client: Telnyx::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
