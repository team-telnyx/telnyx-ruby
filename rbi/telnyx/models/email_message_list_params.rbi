# typed: strong

module Telnyx
  module Models
    class EmailMessageListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailMessageListParams, Telnyx::Internal::AnyHash)
        end

      # Metadata containment filter, supplied as a JSON object or comma-separated
      # `key=value` pairs. All supplied key/value pairs must be contained in the message
      # metadata. An empty value or empty JSON object omits the filter. Malformed
      # values, valid non-object JSON, pairs without `=`, empty keys, and
      # non-string/nested query shapes return HTTP 400.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_metadata

      sig { params(filter_metadata: String).void }
      attr_writer :filter_metadata

      # Comma-separated tags. Each segment is trimmed, and messages having at least one
      # supplied tag are returned; matching is exact and case-sensitive after trimming.
      # Because commas delimit values and surrounding whitespace is removed, this filter
      # cannot represent stored tags containing literal commas or leading/trailing
      # whitespace. An empty value omits the filter. Empty segments and
      # non-string/nested query shapes return HTTP 400.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_tags

      sig { params(filter_tags: String).void }
      attr_writer :filter_tags

      # Opaque URL-safe Base64 cursor returned by a previous list response.
      sig { returns(T.nilable(String)) }
      attr_reader :page_cursor

      sig { params(page_cursor: String).void }
      attr_writer :page_cursor

      # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      # clamped to the valid range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter_metadata: String,
          filter_tags: String,
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Metadata containment filter, supplied as a JSON object or comma-separated
        # `key=value` pairs. All supplied key/value pairs must be contained in the message
        # metadata. An empty value or empty JSON object omits the filter. Malformed
        # values, valid non-object JSON, pairs without `=`, empty keys, and
        # non-string/nested query shapes return HTTP 400.
        filter_metadata: nil,
        # Comma-separated tags. Each segment is trimmed, and messages having at least one
        # supplied tag are returned; matching is exact and case-sensitive after trimming.
        # Because commas delimit values and surrounding whitespace is removed, this filter
        # cannot represent stored tags containing literal commas or leading/trailing
        # whitespace. An empty value omits the filter. Empty segments and
        # non-string/nested query shapes return HTTP 400.
        filter_tags: nil,
        # Opaque URL-safe Base64 cursor returned by a previous list response.
        page_cursor: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_metadata: String,
            filter_tags: String,
            page_cursor: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
