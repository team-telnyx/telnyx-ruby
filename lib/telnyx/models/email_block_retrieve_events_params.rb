# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailBlocks#retrieve_events
    class EmailBlockRetrieveEventsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute page_number
      #   Offset page number (≥1, default 1).
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size (default 50, max 100).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(id:, page_number: nil, page_size: nil, request_options: {})
      #   @param id [String]
      #
      #   @param page_number [Integer] Offset page number (≥1, default 1).
      #
      #   @param page_size [Integer] Page size (default 50, max 100).
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
