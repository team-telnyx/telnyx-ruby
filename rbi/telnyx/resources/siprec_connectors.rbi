# typed: strong

module Telnyx
  module Resources
    class SiprecConnectors
      # Creates a new SIPREC connector configuration.
      sig do
        params(
          host: String,
          name: String,
          port: Integer,
          app_subdomain: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SiprecConnectorCreateResponse)
      end
      def create(
        # Hostname/IPv4 address of the SIPREC SRS.
        host:,
        # Name for the SIPREC connector resource.
        name:,
        # Port for the SIPREC SRS.
        port:,
        # Subdomain to route the call when using Telnyx SRS (optional for non-Telnyx SRS).
        app_subdomain: nil,
        request_options: {}
      )
      end

      # Returns details of a stored SIPREC connector.
      sig do
        params(
          connector_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SiprecConnectorRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies a SIPREC connector.
        connector_name,
        request_options: {}
      )
      end

      # Updates a stored SIPREC connector configuration.
      sig do
        params(
          connector_name: String,
          host: String,
          name: String,
          port: Integer,
          app_subdomain: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SiprecConnectorUpdateResponse)
      end
      def update(
        # Uniquely identifies a SIPREC connector.
        connector_name,
        # Hostname/IPv4 address of the SIPREC SRS.
        host:,
        # Name for the SIPREC connector resource.
        name:,
        # Port for the SIPREC SRS.
        port:,
        # Subdomain to route the call when using Telnyx SRS (optional for non-Telnyx SRS).
        app_subdomain: nil,
        request_options: {}
      )
      end

      # Deletes a stored SIPREC connector.
      sig do
        params(
          connector_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Uniquely identifies a SIPREC connector.
        connector_name,
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
