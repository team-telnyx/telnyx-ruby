# typed: strong

module Telnyx
  module Resources
    class GlobalIPHealthChecks
      # Create a Global IP health check.
      sig do
        params(
          global_ip_id: String,
          health_check_params: T::Hash[Symbol, T.anything],
          health_check_type: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPHealthCheckCreateResponse)
      end
      def create(
        # Global IP ID.
        global_ip_id: nil,
        # A Global IP health check params.
        health_check_params: nil,
        # The Global IP health check type.
        health_check_type: nil,
        request_options: {}
      )
      end

      # Retrieve a Global IP health check.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPHealthCheckRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # List all Global IP health checks.
      sig do
        params(
          page: Telnyx::GlobalIPHealthCheckListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[
            Telnyx::Models::GlobalIPHealthCheckListResponse
          ]
        )
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete a Global IP health check.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPHealthCheckDeleteResponse)
      end
      def delete(
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
