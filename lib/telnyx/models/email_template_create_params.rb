# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#create
    class EmailTemplateCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   Letters, numbers, spaces, hyphens, and underscores only.
      #
      #   @return [String]
      required :name, String

      # @!attribute html_body
      #   Liquid template HTML body.
      #
      #   @return [String, nil]
      optional :html_body, String, nil?: true

      # @!attribute subject
      #   Liquid template subject.
      #
      #   @return [String, nil]
      optional :subject, String, nil?: true

      # @!attribute text_body
      #   Liquid template text body.
      #
      #   @return [String, nil]
      optional :text_body, String, nil?: true

      # @!attribute variables
      #   Template variables. Auto-extracted from subject/body fields when absent.
      #
      #   @return [Array<String>, nil]
      optional :variables, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(name:, html_body: nil, subject: nil, text_body: nil, variables: nil, idempotency_key: nil, request_options: {})
      #   @param name [String] Letters, numbers, spaces, hyphens, and underscores only.
      #
      #   @param html_body [String, nil] Liquid template HTML body.
      #
      #   @param subject [String, nil] Liquid template subject.
      #
      #   @param text_body [String, nil] Liquid template text body.
      #
      #   @param variables [Array<String>] Template variables. Auto-extracted from subject/body fields when absent.
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
