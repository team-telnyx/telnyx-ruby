# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        class BatchDetailRecords
          class SpeechToText
            # Creates a new Speech to Text batch report request with the specified filters
            sig do
              params(
                end_date: Time,
                start_date: Time,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextCreateResponse
              )
            end
            def create(
              # End date in ISO format with timezone (date range must be up to one month)
              end_date:,
              # Start date in ISO format with timezone
              start_date:,
              request_options: {}
            )
            end

            # Retrieves a specific Speech to Text batch report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextRetrieveResponse
              )
            end
            def retrieve(id, request_options: {})
            end

            # Retrieves all Speech to Text batch report requests for the authenticated user
            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextListResponse
              )
            end
            def list(request_options: {})
            end

            # Deletes a specific Speech to Text batch report request by ID
            sig do
              params(
                id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse
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
