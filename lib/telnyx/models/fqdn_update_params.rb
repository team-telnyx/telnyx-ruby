# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Fqdns#update
    class FqdnUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #   ID of the FQDN connection to which this IP should be attached.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute dns_record_type
      #   The DNS record type for the FQDN. For cases where a port is not set, the DNS
      #   record type must be 'srv'. For cases where a port is set, the DNS record type
      #   must be 'a'. If the DNS record type is 'a' and a port is not specified, 5060
      #   will be used.
      #
      #   @return [String, nil]
      optional :dns_record_type, String

      # @!attribute fqdn
      #   FQDN represented by this resource.
      #
      #   @return [String, nil]
      optional :fqdn, String

      # @!attribute port
      #   Port to use when connecting to this FQDN.
      #
      #   @return [Integer, nil]
      optional :port, Integer, nil?: true

      # @!method initialize(connection_id: nil, dns_record_type: nil, fqdn: nil, port: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FqdnUpdateParams} for more details.
      #
      #   @param connection_id [String] ID of the FQDN connection to which this IP should be attached.
      #
      #   @param dns_record_type [String] The DNS record type for the FQDN. For cases where a port is not set, the DNS rec
      #
      #   @param fqdn [String] FQDN represented by this resource.
      #
      #   @param port [Integer, nil] Port to use when connecting to this FQDN.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
