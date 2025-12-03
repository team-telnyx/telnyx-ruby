# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          class Voice
            # Creates a new legacy usage V2 CDR report request with the specified filters
            sig do
              params(
                end_time: Time,
                start_time: Time,
                aggregation_type: Integer,
                connections: T::Array[Integer],
                managed_accounts: T::Array[String],
                product_breakdown: Integer,
                select_all_managed_accounts: T::Boolean,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::VoiceCreateResponse
              )
            end
            def create(
              # End time in ISO format
              end_time:,
              # Start time in ISO format
              start_time:,
              # Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
              aggregation_type: nil,
              # List of connections to filter by
              connections: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
              # vs Toll-free per Country = 3
              product_breakdown: nil,
              # Whether to select all managed accounts
              select_all_managed_accounts: nil,
              request_options: {}
            )
            end

            # Fetch single cdr usage report by id.
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::VoiceRetrieveResponse
              )
            end
            def retrieve(id, request_options: {})
            end

            # Fetch all previous requests for cdr usage reports.
            sig do
              params(
                page: Integer,
                per_page: Integer,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Internal::PerPagePagination[
                  Telnyx::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy
                ]
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

            # Deletes a specific V2 legacy usage CDR report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::VoiceDeleteResponse
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
