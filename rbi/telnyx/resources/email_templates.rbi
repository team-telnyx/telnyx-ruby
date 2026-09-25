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
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::EmailTemplateCreateParams::VariableSchema::OrHash
              ]
            ),
          variables: T::Array[String],
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
        # Body param: Template variables. Auto-extracted from subject/body fields when
        # absent.
        variables: nil,
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
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::UpdateEmailTemplateRequest::VariableSchema::OrHash
              ]
            ),
          variables: T::Array[String],
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
        variables: nil,
        request_options: {}
      )
      end

      # Lists templates sorted newest first by `created_at desc, id desc`.
      sig do
        params(
          page_cursor: String,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::EmailCursorPagination[Telnyx::EmailTemplate]
        )
      end
      def list(
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
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::UpdateEmailTemplateRequest::VariableSchema::OrHash
              ]
            ),
          variables: T::Array[String],
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
        variables: nil,
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
