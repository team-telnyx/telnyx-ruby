# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#list
    class EmailMessageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_metadata
      #   Metadata containment filter, supplied as a JSON object or comma-separated
      #   `key=value` pairs. All supplied key/value pairs must be contained in the message
      #   metadata. An empty value or empty JSON object omits the filter. Malformed
      #   values, valid non-object JSON, pairs without `=`, empty keys, and
      #   non-string/nested query shapes return HTTP 400.
      #
      #   @return [String, nil]
      optional :filter_metadata, String

      # @!attribute filter_tags
      #   Comma-separated tags. Each segment is trimmed, and messages having at least one
      #   supplied tag are returned; matching is exact and case-sensitive after trimming.
      #   Because commas delimit values and surrounding whitespace is removed, this filter
      #   cannot represent stored tags containing literal commas or leading/trailing
      #   whitespace. An empty value omits the filter. Empty segments and
      #   non-string/nested query shapes return HTTP 400.
      #
      #   @return [String, nil]
      optional :filter_tags, String

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

      # @!method initialize(filter_metadata: nil, filter_tags: nil, page_cursor: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailMessageListParams} for more details.
      #
      #   @param filter_metadata [String] Metadata containment filter, supplied as a JSON object or comma-separated `key=v
      #
      #   @param filter_tags [String] Comma-separated tags. Each segment is trimmed, and messages having at least one
      #
      #   @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
