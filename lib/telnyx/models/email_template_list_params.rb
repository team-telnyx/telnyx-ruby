# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#list
    class EmailTemplateListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_autoescape
      #   Exact match on the template's `autoescape` option. Only the exact query strings
      #   `true` and `false` are accepted; other values, including blank, return 400.
      #
      #   @return [Symbol, Telnyx::Models::EmailTemplateListParams::FilterAutoescape, nil]
      optional :filter_autoescape, enum: -> { Telnyx::EmailTemplateListParams::FilterAutoescape }

      # @!attribute filter_content_type
      #   Matches templates by stored body presence. `html_and_text` requires both an HTML
      #   and text body; `html_only` requires HTML and no text body; `text_only` requires
      #   text and no HTML body; `no_body` requires neither. `null` and exactly `""` count
      #   as absent; whitespace-only strings count as content. An empty or unsupported
      #   value returns a 400 response.
      #
      #   @return [Symbol, Telnyx::Models::EmailTemplateListParams::FilterContentType, nil]
      optional :filter_content_type, enum: -> { Telnyx::EmailTemplateListParams::FilterContentType }

      # @!attribute filter_query
      #   Case-insensitive literal substring match over the template `name` or stored
      #   `subject` only; bodies are never searched. `%`, `_`, and `\` are literal
      #   characters with no wildcard meaning. A blank value is treated as omitted.
      #
      #   @return [String, nil]
      optional :filter_query, String

      # @!attribute filter_strict_variables
      #   Exact match on the template's `strict_variables` option. Only the exact query
      #   strings `true` and `false` are accepted; other values, including blank,
      #   return 400.
      #
      #   @return [Symbol, Telnyx::Models::EmailTemplateListParams::FilterStrictVariables, nil]
      optional :filter_strict_variables, enum: -> { Telnyx::EmailTemplateListParams::FilterStrictVariables }

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

      # @!method initialize(filter_autoescape: nil, filter_content_type: nil, filter_query: nil, filter_strict_variables: nil, page_cursor: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailTemplateListParams} for more details.
      #
      #   @param filter_autoescape [Symbol, Telnyx::Models::EmailTemplateListParams::FilterAutoescape] Exact match on the template's `autoescape` option. Only the exact query strings
      #
      #   @param filter_content_type [Symbol, Telnyx::Models::EmailTemplateListParams::FilterContentType] Matches templates by stored body presence. `html_and_text` requires both an HTML
      #
      #   @param filter_query [String] Case-insensitive literal substring match over the template `name` or stored `sub
      #
      #   @param filter_strict_variables [Symbol, Telnyx::Models::EmailTemplateListParams::FilterStrictVariables] Exact match on the template's `strict_variables` option. Only the exact query st
      #
      #   @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Exact match on the template's `autoescape` option. Only the exact query strings
      # `true` and `false` are accepted; other values, including blank, return 400.
      module FilterAutoescape
        extend Telnyx::Internal::Type::Enum

        TRUE = :true
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Matches templates by stored body presence. `html_and_text` requires both an HTML
      # and text body; `html_only` requires HTML and no text body; `text_only` requires
      # text and no HTML body; `no_body` requires neither. `null` and exactly `""` count
      # as absent; whitespace-only strings count as content. An empty or unsupported
      # value returns a 400 response.
      module FilterContentType
        extend Telnyx::Internal::Type::Enum

        HTML_AND_TEXT = :html_and_text
        HTML_ONLY = :html_only
        TEXT_ONLY = :text_only
        NO_BODY = :no_body

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Exact match on the template's `strict_variables` option. Only the exact query
      # strings `true` and `false` are accepted; other values, including blank,
      # return 400.
      module FilterStrictVariables
        extend Telnyx::Internal::Type::Enum

        TRUE = :true
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
