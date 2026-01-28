# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Fqdns#list
    class FqdnListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[connection_id], filter[fqdn], filter[port], filter[dns_record_type]
      #
      #   @return [Telnyx::Models::FqdnListParams::Filter, nil]
      optional :filter, -> { Telnyx::FqdnListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FqdnListParams} for more details.
      #
      #   @param filter [Telnyx::Models::FqdnListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      #   filter[connection\_
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute connection_id
        #   ID of the FQDN connection to which the FQDN belongs.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute dns_record_type
        #   DNS record type used by the FQDN.
        #
        #   @return [String, nil]
        optional :dns_record_type, String

        # @!attribute fqdn
        #   FQDN represented by the resource.
        #
        #   @return [String, nil]
        optional :fqdn, String

        # @!attribute port
        #   Port to use when connecting to the FQDN.
        #
        #   @return [Integer, nil]
        optional :port, Integer

        # @!method initialize(connection_id: nil, dns_record_type: nil, fqdn: nil, port: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[connection_id], filter[fqdn], filter[port], filter[dns_record_type]
        #
        #   @param connection_id [String] ID of the FQDN connection to which the FQDN belongs.
        #
        #   @param dns_record_type [String] DNS record type used by the FQDN.
        #
        #   @param fqdn [String] FQDN represented by the resource.
        #
        #   @param port [Integer] Port to use when connecting to the FQDN.
      end
    end
  end
end
