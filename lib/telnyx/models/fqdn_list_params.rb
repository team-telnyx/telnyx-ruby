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

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::FqdnListParams::Page, nil]
      optional :page, -> { Telnyx::FqdnListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FqdnListParams} for more details.
      #
      #   @param filter [Telnyx::Models::FqdnListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      #   filter[connection\_
      #
      #   @param page [Telnyx::Models::FqdnListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
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

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
