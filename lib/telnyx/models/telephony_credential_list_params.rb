# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TelephonyCredentials#list
    class TelephonyCredentialListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[tag],
      #   filter[name], filter[status], filter[resource_id], filter[sip_username]
      #
      #   @return [Telnyx::Models::TelephonyCredentialListParams::Filter, nil]
      optional :filter, -> { Telnyx::TelephonyCredentialListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::TelephonyCredentialListParams::Page, nil]
      optional :page, -> { Telnyx::TelephonyCredentialListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TelephonyCredentialListParams} for more details.
      #
      #   @param filter [Telnyx::Models::TelephonyCredentialListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[tag], filte
      #
      #   @param page [Telnyx::Models::TelephonyCredentialListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   Filter by name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute resource_id
        #   Filter by resource_id
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!attribute sip_username
        #   Filter by sip_username
        #
        #   @return [String, nil]
        optional :sip_username, String

        # @!attribute status
        #   Filter by status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute tag
        #   Filter by tag
        #
        #   @return [String, nil]
        optional :tag, String

        # @!method initialize(name: nil, resource_id: nil, sip_username: nil, status: nil, tag: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[tag],
        #   filter[name], filter[status], filter[resource_id], filter[sip_username]
        #
        #   @param name [String] Filter by name
        #
        #   @param resource_id [String] Filter by resource_id
        #
        #   @param sip_username [String] Filter by sip_username
        #
        #   @param status [String] Filter by status
        #
        #   @param tag [String] Filter by tag
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
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
