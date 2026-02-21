# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AlphanumericSenderIDs#list
    class AlphanumericSenderIDListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_messaging_profile_id
      #   Filter by messaging profile ID.
      #
      #   @return [String, nil]
      optional :filter_messaging_profile_id, String

      # @!attribute page_number
      #   Page number.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter_messaging_profile_id: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_messaging_profile_id [String] Filter by messaging profile ID.
      #
      #   @param page_number [Integer] Page number.
      #
      #   @param page_size [Integer] Page size.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
