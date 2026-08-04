# frozen_string_literal: true

module Telnyx
  module Resources
    # Create, list, retrieve, update, delete, and render Liquid email templates.
    class EmailTemplates
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailTemplateCreateParams} for more details.
      #
      # Creates a Liquid email template. Variables are auto-extracted when omitted.
      #
      # @overload create(name:, html_body: nil, subject: nil, text_body: nil, variables: nil, idempotency_key: nil, request_options: {})
      #
      # @param name [String] Body param: Letters, numbers, spaces, hyphens, and underscores only.
      #
      # @param html_body [String, nil] Body param: Liquid template HTML body.
      #
      # @param subject [String, nil] Body param: Liquid template subject.
      #
      # @param text_body [String, nil] Body param: Liquid template text body.
      #
      # @param variables [Array<String>] Body param: Template variables. Auto-extracted from subject/body fields when abs
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailTemplateResponse]
      #
      # @see Telnyx::Models::EmailTemplateCreateParams
      def create(params)
        parsed, options = Telnyx::EmailTemplateCreateParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "email_templates",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::EmailTemplateResponse,
          options: options
        )
      end

      # Get an email template
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Email template UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailTemplateResponse]
      #
      # @see Telnyx::Models::EmailTemplateRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["email_templates/%1$s", id],
          model: Telnyx::EmailTemplateResponse,
          options: params[:request_options]
        )
      end

      # Updates one or more template fields.
      #
      # @overload update(id, html_body: nil, name: nil, subject: nil, text_body: nil, variables: nil, request_options: {})
      #
      # @param id [String] Email template UUID.
      #
      # @param html_body [String, nil] Liquid template HTML body.
      #
      # @param name [String]
      #
      # @param subject [String, nil] Liquid template subject.
      #
      # @param text_body [String, nil] Liquid template text body.
      #
      # @param variables [Array<String>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailTemplateResponse]
      #
      # @see Telnyx::Models::EmailTemplateUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::EmailTemplateUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["email_templates/%1$s", id],
          body: parsed,
          model: Telnyx::EmailTemplateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailTemplateListParams} for more details.
      #
      # Lists templates sorted newest first by `created_at desc, id desc`.
      #
      # @overload list(page_cursor: nil, page_size: nil, request_options: {})
      #
      # @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailTemplateListResponse]
      #
      # @see Telnyx::Models::EmailTemplateListParams
      def list(params = {})
        parsed, options = Telnyx::EmailTemplateListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_templates",
          query: query,
          model: Telnyx::Models::EmailTemplateListResponse,
          options: options
        )
      end

      # Delete an email template
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Email template UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::EmailTemplateDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["email_templates/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailTemplateRenderParams} for more details.
      #
      # Renders a template using the provided Liquid variables. Missing
      # `template_variables` defaults to `{}`.
      #
      # @overload render(id, template_variables: nil, request_options: {})
      #
      # @param id [String] Email template UUID.
      #
      # @param template_variables [Hash{Symbol=>Object}] Variables for Liquid template rendering. Non-object values are silently treated
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailTemplateRenderResponse]
      #
      # @see Telnyx::Models::EmailTemplateRenderParams
      def render(id, params = {})
        parsed, options = Telnyx::EmailTemplateRenderParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["email_templates/%1$s/render", id],
          body: parsed,
          model: Telnyx::Models::EmailTemplateRenderResponse,
          options: options
        )
      end

      # Replaces template fields. Behaves identically to PATCH; provided for
      # compatibility with Phoenix resource routes.
      #
      # @overload replace(id, html_body: nil, name: nil, subject: nil, text_body: nil, variables: nil, request_options: {})
      #
      # @param id [String] Email template UUID.
      #
      # @param html_body [String, nil] Liquid template HTML body.
      #
      # @param name [String]
      #
      # @param subject [String, nil] Liquid template subject.
      #
      # @param text_body [String, nil] Liquid template text body.
      #
      # @param variables [Array<String>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailTemplateResponse]
      #
      # @see Telnyx::Models::EmailTemplateReplaceParams
      def replace(id, params = {})
        parsed, options = Telnyx::EmailTemplateReplaceParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["email_templates/%1$s", id],
          body: parsed,
          model: Telnyx::EmailTemplateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
