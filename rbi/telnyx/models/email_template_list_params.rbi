# typed: strong

module Telnyx
  module Models
    class EmailTemplateListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailTemplateListParams, Telnyx::Internal::AnyHash)
        end

      # Exact match on the template's `autoescape` option. Only the exact query strings
      # `true` and `false` are accepted; other values, including blank, return 400.
      sig do
        returns(
          T.nilable(Telnyx::EmailTemplateListParams::FilterAutoescape::OrSymbol)
        )
      end
      attr_reader :filter_autoescape

      sig do
        params(
          filter_autoescape:
            Telnyx::EmailTemplateListParams::FilterAutoescape::OrSymbol
        ).void
      end
      attr_writer :filter_autoescape

      # Matches templates by stored body presence. `html_and_text` requires both an HTML
      # and text body; `html_only` requires HTML and no text body; `text_only` requires
      # text and no HTML body; `no_body` requires neither. `null` and exactly `""` count
      # as absent; whitespace-only strings count as content. An empty or unsupported
      # value returns a 400 response.
      sig do
        returns(
          T.nilable(
            Telnyx::EmailTemplateListParams::FilterContentType::OrSymbol
          )
        )
      end
      attr_reader :filter_content_type

      sig do
        params(
          filter_content_type:
            Telnyx::EmailTemplateListParams::FilterContentType::OrSymbol
        ).void
      end
      attr_writer :filter_content_type

      # Case-insensitive literal substring match over the template `name` or stored
      # `subject` only; bodies are never searched. `%`, `_`, and `\` are literal
      # characters with no wildcard meaning. A blank value is treated as omitted.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_query

      sig { params(filter_query: String).void }
      attr_writer :filter_query

      # Exact match on the template's `strict_variables` option. Only the exact query
      # strings `true` and `false` are accepted; other values, including blank,
      # return 400.
      sig do
        returns(
          T.nilable(
            Telnyx::EmailTemplateListParams::FilterStrictVariables::OrSymbol
          )
        )
      end
      attr_reader :filter_strict_variables

      sig do
        params(
          filter_strict_variables:
            Telnyx::EmailTemplateListParams::FilterStrictVariables::OrSymbol
        ).void
      end
      attr_writer :filter_strict_variables

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
          filter_autoescape:
            Telnyx::EmailTemplateListParams::FilterAutoescape::OrSymbol,
          filter_content_type:
            Telnyx::EmailTemplateListParams::FilterContentType::OrSymbol,
          filter_query: String,
          filter_strict_variables:
            Telnyx::EmailTemplateListParams::FilterStrictVariables::OrSymbol,
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Exact match on the template's `autoescape` option. Only the exact query strings
        # `true` and `false` are accepted; other values, including blank, return 400.
        filter_autoescape: nil,
        # Matches templates by stored body presence. `html_and_text` requires both an HTML
        # and text body; `html_only` requires HTML and no text body; `text_only` requires
        # text and no HTML body; `no_body` requires neither. `null` and exactly `""` count
        # as absent; whitespace-only strings count as content. An empty or unsupported
        # value returns a 400 response.
        filter_content_type: nil,
        # Case-insensitive literal substring match over the template `name` or stored
        # `subject` only; bodies are never searched. `%`, `_`, and `\` are literal
        # characters with no wildcard meaning. A blank value is treated as omitted.
        filter_query: nil,
        # Exact match on the template's `strict_variables` option. Only the exact query
        # strings `true` and `false` are accepted; other values, including blank,
        # return 400.
        filter_strict_variables: nil,
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
            filter_autoescape:
              Telnyx::EmailTemplateListParams::FilterAutoescape::OrSymbol,
            filter_content_type:
              Telnyx::EmailTemplateListParams::FilterContentType::OrSymbol,
            filter_query: String,
            filter_strict_variables:
              Telnyx::EmailTemplateListParams::FilterStrictVariables::OrSymbol,
            page_cursor: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Exact match on the template's `autoescape` option. Only the exact query strings
      # `true` and `false` are accepted; other values, including blank, return 400.
      module FilterAutoescape
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailTemplateListParams::FilterAutoescape)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            Telnyx::EmailTemplateListParams::FilterAutoescape::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            Telnyx::EmailTemplateListParams::FilterAutoescape::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EmailTemplateListParams::FilterAutoescape::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Matches templates by stored body presence. `html_and_text` requires both an HTML
      # and text body; `html_only` requires HTML and no text body; `text_only` requires
      # text and no HTML body; `no_body` requires neither. `null` and exactly `""` count
      # as absent; whitespace-only strings count as content. An empty or unsupported
      # value returns a 400 response.
      module FilterContentType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailTemplateListParams::FilterContentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HTML_AND_TEXT =
          T.let(
            :html_and_text,
            Telnyx::EmailTemplateListParams::FilterContentType::TaggedSymbol
          )
        HTML_ONLY =
          T.let(
            :html_only,
            Telnyx::EmailTemplateListParams::FilterContentType::TaggedSymbol
          )
        TEXT_ONLY =
          T.let(
            :text_only,
            Telnyx::EmailTemplateListParams::FilterContentType::TaggedSymbol
          )
        NO_BODY =
          T.let(
            :no_body,
            Telnyx::EmailTemplateListParams::FilterContentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EmailTemplateListParams::FilterContentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Exact match on the template's `strict_variables` option. Only the exact query
      # strings `true` and `false` are accepted; other values, including blank,
      # return 400.
      module FilterStrictVariables
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::EmailTemplateListParams::FilterStrictVariables
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            Telnyx::EmailTemplateListParams::FilterStrictVariables::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            Telnyx::EmailTemplateListParams::FilterStrictVariables::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EmailTemplateListParams::FilterStrictVariables::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
