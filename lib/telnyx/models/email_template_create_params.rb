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
      #   @return [Hash{Symbol=>Telnyx::Models::VariableSchemaEntry}, nil]
      optional :variable_schema,
               -> {
                 Telnyx::Internal::Type::HashOf[Telnyx::VariableSchemaEntry]
               },
               nil?: true

      # @!attribute variables
      #   Persisted variable names. In `automatic` mode a non-null array is rejected; in
      #   `explicit` mode this is the exact manual array and each item is limited to 255
      #   Unicode code points.
      #
      #   @return [Array<String>, nil]
      optional :variables, Telnyx::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute variables_mode
      #   Controls how `variables` is maintained. If both fields are omitted (or
      #   `variables` is null), the template uses `automatic` mode and extracts variable
      #   names from the effective subject, HTML body, and text body. A non-null
      #   `variables` array with no mode selects `explicit`. `automatic` rejects a
      #   simultaneous non-null array; `explicit` requires a non-null array, including
      #   valid `[]`, and preserves its exact order, duplicates, and string contents.
      #
      #   @return [Symbol, Telnyx::Models::EmailTemplateCreateParams::VariablesMode, nil]
      optional :variables_mode, enum: -> { Telnyx::EmailTemplateCreateParams::VariablesMode }

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(name:, autoescape: nil, html_body: nil, strict_variables: nil, subject: nil, text_body: nil, variable_schema: nil, variables: nil, variables_mode: nil, idempotency_key: nil, request_options: {})
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
      #   @param variable_schema [Hash{Symbol=>Telnyx::Models::VariableSchemaEntry}, nil] Structured variable requirements. Required variables cannot define defaults; inv
      #
      #   @param variables [Array<String>, nil] Persisted variable names. In `automatic` mode a non-null array is rejected; in `
      #
      #   @param variables_mode [Symbol, Telnyx::Models::EmailTemplateCreateParams::VariablesMode] Controls how `variables` is maintained. If both fields are omitted (or `variable
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Controls how `variables` is maintained. If both fields are omitted (or
      # `variables` is null), the template uses `automatic` mode and extracts variable
      # names from the effective subject, HTML body, and text body. A non-null
      # `variables` array with no mode selects `explicit`. `automatic` rejects a
      # simultaneous non-null array; `explicit` requires a non-null array, including
      # valid `[]`, and preserves its exact order, duplicates, and string contents.
      module VariablesMode
        extend Telnyx::Internal::Type::Enum

        AUTOMATIC = :automatic
        EXPLICIT = :explicit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
