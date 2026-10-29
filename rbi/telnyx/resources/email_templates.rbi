# typed: strong

module Telnyx
  module Resources
    # Create, list, retrieve, update, delete, and render Liquid email templates.
    class EmailTemplates
      # Creates a Liquid email template. Variables are auto-extracted when omitted.
      sig do
        params(
          name: String,
          autoescape: T::Boolean,
          html_body: T.nilable(String),
          strict_variables: T::Boolean,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variable_schema:
            T.nilable(T::Hash[Symbol, Telnyx::VariableSchemaEntry::OrHash]),
          variables: T.nilable(T::Array[String]),
          variables_mode:
            Telnyx::EmailTemplateCreateParams::VariablesMode::OrSymbol,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailTemplateResponse)
      end
      def create(
        # Body param: Letters, numbers, spaces, hyphens, and underscores only.
        name:,
        # Body param: Per-template HTML autoescaping setting. Defaults to `false` for
        # backward compatibility. When `true`, the rendered `html_body` HTML-escapes each
        # Liquid expression's output at the output boundary (after its filters run, before
        # concatenation with literal template markup). Input values are never mutated and
        # `subject`/`text_body` are never autoescaped. The boundary escape is idempotent:
        # HTML entities already present in the output (e.g. from an explicit `escape`
        # filter) are preserved, so an explicit `escape`/`escape_once` is never
        # double-escaped, and markup introduced by any later filter in the chain is still
        # escaped.
        autoescape: nil,
        # Body param: Liquid template HTML body.
        html_body: nil,
        # Body param: Per-template strict variable-validation setting. Defaults to `false`
        # for backward compatibility. When `true`, a send or render that is missing a
        # variable marked `required: true` in `variable_schema` fails with 422 naming the
        # variable. Missing optional variables never fail; their schema `default` (when
        # set) is applied to the render.
        strict_variables: nil,
        # Body param: Liquid template subject.
        subject: nil,
        # Body param: Liquid template text body.
        text_body: nil,
        # Body param: Structured variable requirements. Required variables cannot define
        # defaults; invalid combinations return 422. This is independent of the legacy
        # `variables` array. On render with `strict_variables` enabled: `required`
        # variables must be supplied as non-empty values — absent, `null`, empty string,
        # empty object `{}`, and empty array `[]` all fail with 422 naming the variable,
        # while present values such as `false` and `0` pass (they are present, not empty).
        # Optional variables fall back to their `default` when absent.
        variable_schema: nil,
        # Body param: Persisted variable names. In `automatic` mode a non-null array is
        # rejected; in `explicit` mode this is the exact manual array and each item is
        # limited to 255 Unicode code points.
        variables: nil,
        # Body param: Controls how `variables` is maintained. If both fields are omitted
        # (or `variables` is null), the template uses `automatic` mode and extracts
        # variable names from the effective subject, HTML body, and text body. A non-null
        # `variables` array with no mode selects `explicit`. `automatic` rejects a
        # simultaneous non-null array; `explicit` requires a non-null array, including
        # valid `[]`, and preserves its exact order, duplicates, and string contents.
        variables_mode: nil,
        # Header param: Optional opaque, unquoted key for safely retrying the same logical
        # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
        # Generate a unique UUID v4 for each operation and reuse it only when retrying
        # that operation with the same request. Invalid headers—including duplicate,
        # empty, malformed, or overlong values—return 400 with error code 10015. A request
        # already in progress with the same key returns 409; reusing the key with a
        # different request returns 422. Only successful responses are replayed, for up to
        # 24 hours. Do not include sensitive data in the key.
        idempotency_key: nil,
        request_options: {}
      )
      end

      # Returns the account-owned template identified by ID, including its Liquid
      # subject and bodies, declared variables, and timestamps.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailTemplateResponse)
      end
      def retrieve(
        # Email template UUID.
        id,
        request_options: {}
      )
      end

      # Updates one or more fields of the specified email template and returns the
      # updated template.
      sig do
        params(
          id: String,
          autoescape: T::Boolean,
          html_body: T.nilable(String),
          name: String,
          strict_variables: T::Boolean,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variable_schema:
            T.nilable(T::Hash[Symbol, Telnyx::VariableSchemaEntry::OrHash]),
          variables: T.nilable(T::Array[String]),
          variables_mode:
            Telnyx::UpdateEmailTemplateRequest::VariablesMode::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailTemplateResponse)
      end
      def update(
        # Email template UUID.
        id,
        # Per-template HTML autoescaping setting.
        autoescape: nil,
        # Liquid template HTML body.
        html_body: nil,
        name: nil,
        # Per-template strict variable-validation setting.
        strict_variables: nil,
        # Liquid template subject.
        subject: nil,
        # Liquid template text body.
        text_body: nil,
        # Structured variable requirements. Required variables cannot define defaults;
        # invalid combinations return 422. Set to `null` to clear the schema.
        variable_schema: nil,
        # Persisted variable names. In `automatic` mode a non-null array is rejected; in
        # `explicit` mode this is the exact manual array and each item is limited to 255
        # Unicode code points.
        variables: nil,
        # Controls how `variables` is maintained. Setting `automatic` re-extracts
        # immediately from the effective subject, HTML body, and text body and rejects a
        # simultaneous non-null array. Setting `explicit` requires the exact non-null
        # array, including valid `[]`. With the mode omitted, a non-null array selects
        # explicit mode, null selects automatic mode, and omitting both fields preserves
        # the current mode. Source-content changes re-extract only in automatic mode.
        variables_mode: nil,
        request_options: {}
      )
      end

      # Lists templates sorted newest first by `created_at desc, id desc`. Optional
      # filters match a case-insensitive literal name/subject query, stored body
      # presence, and the `strict_variables` and `autoescape` settings. Filters
      # intersect, remain scoped to the authenticated account, and apply before cursor
      # pagination. Invalid filter names or values return 400.
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
        ).returns(
          Telnyx::Internal::EmailCursorPagination[Telnyx::EmailTemplate]
        )
      end
      def list(
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

      # Deletes the account-owned template. The operation returns `204` with no body and
      # prevents future sends or renders from using the deleted template ID.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # Email template UUID.
        id,
        request_options: {}
      )
      end

      # Renders a template using the provided Liquid variables. Missing
      # `template_variables` defaults to `{}`.
      #
      # When the template has `strict_variables` enabled and a required variable (per
      # `variable_schema`) is missing, returns 422 naming the variable. When the
      # template has `autoescape` enabled, the rendered `html_body` expression output is
      # HTML-escaped at the output boundary; `subject` and `text_body` are not
      # autoescaped.
      sig do
        params(
          id: String,
          template_variables: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailTemplateRenderResponse)
      end
      def render(
        # Email template UUID.
        id,
        # Variables for Liquid template rendering. Non-object values are silently treated
        # as an empty object.
        template_variables: nil,
        request_options: {}
      )
      end

      # Replaces template fields. Behaves identically to PATCH; provided for
      # compatibility with Phoenix resource routes.
      sig do
        params(
          id: String,
          autoescape: T::Boolean,
          html_body: T.nilable(String),
          name: String,
          strict_variables: T::Boolean,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variable_schema:
            T.nilable(T::Hash[Symbol, Telnyx::VariableSchemaEntry::OrHash]),
          variables: T.nilable(T::Array[String]),
          variables_mode:
            Telnyx::UpdateEmailTemplateRequest::VariablesMode::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailTemplateResponse)
      end
      def replace(
        # Email template UUID.
        id,
        # Per-template HTML autoescaping setting.
        autoescape: nil,
        # Liquid template HTML body.
        html_body: nil,
        name: nil,
        # Per-template strict variable-validation setting.
        strict_variables: nil,
        # Liquid template subject.
        subject: nil,
        # Liquid template text body.
        text_body: nil,
        # Structured variable requirements. Required variables cannot define defaults;
        # invalid combinations return 422. Set to `null` to clear the schema.
        variable_schema: nil,
        # Persisted variable names. In `automatic` mode a non-null array is rejected; in
        # `explicit` mode this is the exact manual array and each item is limited to 255
        # Unicode code points.
        variables: nil,
        # Controls how `variables` is maintained. Setting `automatic` re-extracts
        # immediately from the effective subject, HTML body, and text body and rejects a
        # simultaneous non-null array. Setting `explicit` requires the exact non-null
        # array, including valid `[]`. With the mode omitted, a non-null array selects
        # explicit mode, null selects automatic mode, and omitting both fields preserves
        # the current mode. Source-content changes re-extract only in automatic mode.
        variables_mode: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
