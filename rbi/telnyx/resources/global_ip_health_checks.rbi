# typed: strong

module Telnyx
  module Resources
    # Global IPs
    class GlobalIPHealthChecks
      # Creates a health check for a Global IP to monitor the health of its assignments.
      # Creation is asynchronous, so the request is accepted and the health check
      # becomes active once provisioning completes.
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

      # Returns the details of a single Global IP health check, including its type and
      # configuration.
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

      # Returns a paginated list of the Global IP health checks configured on your
      # account.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::GlobalIPHealthCheck]
        )
      end
      def list(page_number: nil, page_size: nil, request_options: {})
      end

      # Deletes the specified Global IP health check so it no longer monitors the Global
      # IP's assignments.
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
