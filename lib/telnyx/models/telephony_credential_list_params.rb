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
      #   {Telnyx::Models::TelephonyCredentialListParams} for more details.
      #
      #   @param filter [Telnyx::Models::TelephonyCredentialListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[tag], filte
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
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
    end
  end
end
