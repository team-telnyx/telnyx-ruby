# typed: strong

module Telnyx
  module Models
    class SiprecConnectorUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SiprecConnectorUpdateParams, Telnyx::Internal::AnyHash)
        end

      # Hostname/IPv4 address of the SIPREC SRS.
      sig { returns(String) }
      attr_accessor :host

      # Name for the SIPREC connector resource.
      sig { returns(String) }
      attr_accessor :name

      # Port for the SIPREC SRS.
      sig { returns(Integer) }
      attr_accessor :port

      # Subdomain to route the call when using Telnyx SRS (optional for non-Telnyx SRS).
      sig { returns(T.nilable(String)) }
      attr_reader :app_subdomain

      sig { params(app_subdomain: String).void }
      attr_writer :app_subdomain

      sig do
        params(
          host: String,
          name: String,
          port: Integer,
          app_subdomain: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            host: String,
            name: String,
            port: Integer,
            app_subdomain: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
