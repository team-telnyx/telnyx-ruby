# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class UsageReports
          class NumberLookup
            # Submit a new telco data usage report
            sig do
              params(
                aggregation_type:
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::OrSymbol,
                end_date: Date,
                managed_accounts: T::Array[String],
                start_date: Date,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupCreateResponse
              )
            end
            def create(
              # Type of aggregation for the report
              aggregation_type: nil,
              # End date for the usage report
              end_date: nil,
              # List of managed accounts to include in the report
              managed_accounts: nil,
              # Start date for the usage report
              start_date: nil,
              request_options: {}
            )
            end

            # Retrieve a specific telco data usage report by its ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupRetrieveResponse
              )
            end
            def retrieve(id, request_options: {})
            end

            # Retrieve a paginated list of telco data usage reports
            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse
              )
            end
            def list(request_options: {})
            end

            # Delete a specific telco data usage report by its ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
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
