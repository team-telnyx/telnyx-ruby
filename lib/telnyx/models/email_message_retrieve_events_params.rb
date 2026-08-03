# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#retrieve_events
    class EmailMessageRetrieveEventsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute email_id
      #
      #   @return [String]
      required :email_id, String

      # @!attribute page_cursor
      #   Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      #   @return [String, nil]
      optional :page_cursor, String

      # @!attribute page_size
      #   Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #   clamped to the valid range.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(email_id:, page_cursor: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailMessageRetrieveEventsParams} for more details.
      #
      #   @param email_id [String]
      #
      #   @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
