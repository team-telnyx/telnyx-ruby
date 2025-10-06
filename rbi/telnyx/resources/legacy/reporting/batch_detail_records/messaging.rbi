# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          class Messaging
            # Creates a new MDR detailed report request with the specified filters
            sig do
              params(
                end_time: Time,
                start_time: Time,
                connections: T::Array[Integer],
                directions: T::Array[Integer],
                filters: T::Array[Telnyx::Legacy::Reporting::Filter::OrHash],
                include_message_body: T::Boolean,
                managed_accounts: T::Array[String],
                profiles: T::Array[String],
                record_types: T::Array[Integer],
                report_name: String,
                select_all_managed_accounts: T::Boolean,
                timezone: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateResponse
              )
            end
            def create(
              # End time in ISO format. Note: If end time includes the last 4 hours, some MDRs
              # might not appear in this report, due to wait time for downstream message
              # delivery confirmation
              end_time:,
              # Start time in ISO format
              start_time:,
              # List of connections to filter by
              connections: nil,
              # List of directions to filter by (Inbound = 1, Outbound = 2)
              directions: nil,
              # List of filters to apply
              filters: nil,
              # Whether to include message body in the report
              include_message_body: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # List of messaging profile IDs to filter by
              profiles: nil,
              # List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
              record_types: nil,
              # Name of the report
              report_name: nil,
              # Whether to select all managed accounts
              select_all_managed_accounts: nil,
              # Timezone for the report
              timezone: nil,
              request_options: {}
            )
            end

            # Retrieves a specific MDR detailed report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingRetrieveResponse
              )
            end
            def retrieve(id, request_options: {})
            end

            # Retrieves all MDR detailed report requests for the authenticated user
            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingListResponse
              )
            end
            def list(request_options: {})
            end

            # Deletes a specific MDR detailed report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse
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
