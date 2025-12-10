# typed: strong

module Telnyx
  module Resources
    class ExternalConnections
      class LogMessages
        # Retrieve a log message for an external connection associated with your account.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::LogMessageRetrieveResponse
          )
        end
        def retrieve(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # Retrieve a list of log messages for all external connections associated with
        # your account.
        sig do
          params(
            filter:
              Telnyx::ExternalConnections::LogMessageListParams::Filter::OrHash,
            page:
              Telnyx::ExternalConnections::LogMessageListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::ExternalConnections::LogMessageListResponse)
        end
        def list(
          # Filter parameter for log messages (deepObject style). Supports filtering by
          # external_connection_id and telephone_number with eq/contains operations.
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        # Dismiss a log message for an external connection associated with your account.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::LogMessageDismissResponse
          )
        end
        def dismiss(
          # Identifies the resource.
          id,
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
