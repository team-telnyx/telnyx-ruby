# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          class Voice
            # Creates a new CDR report request with the specified filters
            sig do
              params(
                end_time: Time,
                start_time: Time,
                call_types: T::Array[Integer],
                connections: T::Array[Integer],
                fields: T::Array[String],
                filters:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams::Filter::OrHash
                  ],
                include_all_metadata: T::Boolean,
                managed_accounts: T::Array[String],
                record_types: T::Array[Integer],
                report_name: String,
                select_all_managed_accounts: T::Boolean,
                source: String,
                timezone: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse
              )
            end
            def create(
              # End time in ISO format
              end_time:,
              # Start time in ISO format
              start_time:,
              # List of call types to filter by (Inbound = 1, Outbound = 2)
              call_types: nil,
              # List of connections to filter by
              connections: nil,
              # Set of fields to include in the report
              fields: nil,
              # List of filters to apply
              filters: nil,
              # Whether to include all metadata
              include_all_metadata: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
              record_types: nil,
              # Name of the report
              report_name: nil,
              # Whether to select all managed accounts
              select_all_managed_accounts: nil,
              # Source of the report. Valid values: calls (default), call-control, fax-api,
              # webrtc
              source: nil,
              # Timezone for the report
              timezone: nil,
              request_options: {}
            )
            end

            # Retrieves a specific CDR report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveResponse
              )
            end
            def retrieve(id, request_options: {})
            end

            # Retrieves all CDR report requests for the authenticated user
            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse
              )
            end
            def list(request_options: {})
            end

            # Deletes a specific CDR report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceDeleteResponse
              )
            end
            def delete(id, request_options: {})
            end

            # Retrieves all available fields that can be used in CDR reports
            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveFieldsResponse
              )
            end
            def retrieve_fields(request_options: {})
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
