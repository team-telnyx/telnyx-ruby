# typed: strong

module Telnyx
  module Resources
    # Create, list, retrieve, update, delete, and render Liquid email templates.
    class EmailTemplates
      # Creates a Liquid email template. Variables are auto-extracted when omitted.
      sig do
        params(
          name: String,
          html_body: T.nilable(String),
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variables: T::Array[String],
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailTemplateResponse)
      end
      def create(
        # Body param: Letters, numbers, spaces, hyphens, and underscores only.
        name:,
        # Body param: Liquid template HTML body.
        html_body: nil,
        # Body param: Liquid template subject.
        subject: nil,
        # Body param: Liquid template text body.
        text_body: nil,
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

      # Get an email template
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

      # Updates one or more template fields.
      sig do
        params(
          id: String,
          html_body: T.nilable(String),
          name: String,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variables: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailTemplateResponse)
      end
      def update(
        # Email template UUID.
        id,
        # Liquid template HTML body.
        html_body: nil,
        name: nil,
        # Liquid template subject.
        subject: nil,
        # Liquid template text body.
        text_body: nil,
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
        ).returns(Telnyx::Models::EmailTemplateListResponse)
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

      # Delete an email template
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
          html_body: T.nilable(String),
          name: String,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variables: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::EmailTemplateResponse)
      end
      def replace(
        # Email template UUID.
        id,
        # Liquid template HTML body.
        html_body: nil,
        name: nil,
        # Liquid template subject.
        subject: nil,
        # Liquid template text body.
        text_body: nil,
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
