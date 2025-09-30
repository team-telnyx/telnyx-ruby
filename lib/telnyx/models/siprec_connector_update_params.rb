# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SiprecConnectors#update
    class SiprecConnectorUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute host
      #   Hostname/IPv4 address of the SIPREC SRS.
      #
      #   @return [String]
      required :host, String

      # @!attribute name
      #   Name for the SIPREC connector resource.
      #
      #   @return [String]
      required :name, String

      # @!attribute port
      #   Port for the SIPREC SRS.
      #
      #   @return [Integer]
      required :port, Integer

      # @!attribute app_subdomain
      #   Subdomain to route the call when using Telnyx SRS (optional for non-Telnyx SRS).
      #
      #   @return [String, nil]
      optional :app_subdomain, String

      # @!method initialize(host:, name:, port:, app_subdomain: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SiprecConnectorUpdateParams} for more details.
      #
      #   @param host [String] Hostname/IPv4 address of the SIPREC SRS.
      #
      #   @param name [String] Name for the SIPREC connector resource.
      #
      #   @param port [Integer] Port for the SIPREC SRS.
      #
      #   @param app_subdomain [String] Subdomain to route the call when using Telnyx SRS (optional for non-Telnyx SRS).
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
