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

      # @!attribute autoescape
      #   Per-template HTML autoescaping setting. Defaults to `false` for backward
      #   compatibility. When `true`, the rendered `html_body` HTML-escapes each Liquid
      #   expression's output at the output boundary (after its filters run, before
      #   concatenation with literal template markup). Input values are never mutated and
      #   `subject`/`text_body` are never autoescaped. The boundary escape is idempotent:
      #   HTML entities already present in the output (e.g. from an explicit `escape`
      #   filter) are preserved, so an explicit `escape`/`escape_once` is never
      #   double-escaped, and markup introduced by any later filter in the chain is still
      #   escaped.
      #
      #   @return [Boolean, nil]
      optional :autoescape, Telnyx::Internal::Type::Boolean

      # @!attribute html_body
      #   Liquid template HTML body.
      #
      #   @return [String, nil]
      optional :html_body, String, nil?: true

      # @!attribute strict_variables
      #   Per-template strict variable-validation setting. Defaults to `false` for
      #   backward compatibility. When `true`, a send or render that is missing a variable
      #   marked `required: true` in `variable_schema` fails with 422 naming the variable.
      #   Missing optional variables never fail; their schema `default` (when set) is
      #   applied to the render.
      #
      #   @return [Boolean, nil]
      optional :strict_variables, Telnyx::Internal::Type::Boolean

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

      # @!attribute variable_schema
      #   Structured variable requirements. Required variables cannot define defaults;
      #   invalid combinations return 422. This is independent of the legacy `variables`
      #   array. On render with `strict_variables` enabled: `required` variables must be
      #   supplied as non-empty values — absent, `null`, empty string, empty object `{}`,
      #   and empty array `[]` all fail with 422 naming the variable, while present values
      #   such as `false` and `0` pass (they are present, not empty). Optional variables
      #   fall back to their `default` when absent.
      #
      #   @return [Hash{Symbol=>Telnyx::Models::EmailTemplateCreateParams::VariableSchema}, nil]
      optional :variable_schema,
               -> { Telnyx::Internal::Type::HashOf[Telnyx::EmailTemplateCreateParams::VariableSchema] },
               nil?: true

      # @!attribute variables
      #   Template variables. Auto-extracted from subject/body fields when absent.
      #
      #   @return [Array<String>, nil]
      optional :variables, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(name:, autoescape: nil, html_body: nil, strict_variables: nil, subject: nil, text_body: nil, variable_schema: nil, variables: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailTemplateCreateParams} for more details.
      #
      #   @param name [String] Letters, numbers, spaces, hyphens, and underscores only.
      #
      #   @param autoescape [Boolean] Per-template HTML autoescaping setting. Defaults to `false` for backward compati
      #
      #   @param html_body [String, nil] Liquid template HTML body.
      #
      #   @param strict_variables [Boolean] Per-template strict variable-validation setting. Defaults to `false` for backwar
      #
      #   @param subject [String, nil] Liquid template subject.
      #
      #   @param text_body [String, nil] Liquid template text body.
      #
      #   @param variable_schema [Hash{Symbol=>Telnyx::Models::EmailTemplateCreateParams::VariableSchema}, nil] Structured variable requirements. Required variables cannot define defaults; inv
      #
      #   @param variables [Array<String>] Template variables. Auto-extracted from subject/body fields when absent.
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class VariableSchema < Telnyx::Internal::Type::BaseModel
        # @!attribute required
        #   Whether the variable must be supplied when strict variable validation is
        #   enabled.
        #
        #   @return [Boolean]
        required :required, Telnyx::Internal::Type::Boolean

        # @!attribute default
        #   Default value for an optional variable. Rejected when `required` is `true`.
        #
        #   @return [String, nil]
        optional :default, String

        # @!method initialize(required:, default: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailTemplateCreateParams::VariableSchema} for more details.
        #
        #   @param required [Boolean] Whether the variable must be supplied when strict variable validation is enabled
        #
        #   @param default [String] Default value for an optional variable. Rejected when `required` is `true`.
      end
    end
  end
end
