# frozen_string_literal: true

module Telnyx
  module Models
    class UpdateEmailTemplateRequest < Telnyx::Internal::Type::BaseModel
      # @!attribute autoescape
      #   Per-template HTML autoescaping setting.
      #
      #   @return [Boolean, nil]
      optional :autoescape, Telnyx::Internal::Type::Boolean

      # @!attribute html_body
      #   Liquid template HTML body.
      #
      #   @return [String, nil]
      optional :html_body, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute strict_variables
      #   Per-template strict variable-validation setting.
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
      #   invalid combinations return 422. Set to `null` to clear the schema.
      #
      #   @return [Hash{Symbol=>Telnyx::Models::UpdateEmailTemplateRequest::VariableSchema}, nil]
      optional :variable_schema,
               -> { Telnyx::Internal::Type::HashOf[Telnyx::UpdateEmailTemplateRequest::VariableSchema] },
               nil?: true

      # @!attribute variables
      #   Persisted variable names. In `automatic` mode a non-null array is rejected; in
      #   `explicit` mode this is the exact manual array and each item is limited to 255
      #   Unicode code points.
      #
      #   @return [Array<String>, nil]
      optional :variables, Telnyx::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute variables_mode
      #   Controls how `variables` is maintained. Setting `automatic` re-extracts
      #   immediately from the effective subject, HTML body, and text body and rejects a
      #   simultaneous non-null array. Setting `explicit` requires the exact non-null
      #   array, including valid `[]`. With the mode omitted, a non-null array selects
      #   explicit mode, null selects automatic mode, and omitting both fields preserves
      #   the current mode. Source-content changes re-extract only in automatic mode.
      #
      #   @return [Symbol, Telnyx::Models::UpdateEmailTemplateRequest::VariablesMode, nil]
      optional :variables_mode, enum: -> { Telnyx::UpdateEmailTemplateRequest::VariablesMode }

      # @!method initialize(autoescape: nil, html_body: nil, name: nil, strict_variables: nil, subject: nil, text_body: nil, variable_schema: nil, variables: nil, variables_mode: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UpdateEmailTemplateRequest} for more details.
      #
      #   @param autoescape [Boolean] Per-template HTML autoescaping setting.
      #
      #   @param html_body [String, nil] Liquid template HTML body.
      #
      #   @param name [String]
      #
      #   @param strict_variables [Boolean] Per-template strict variable-validation setting.
      #
      #   @param subject [String, nil] Liquid template subject.
      #
      #   @param text_body [String, nil] Liquid template text body.
      #
      #   @param variable_schema [Hash{Symbol=>Telnyx::Models::UpdateEmailTemplateRequest::VariableSchema}, nil] Structured variable requirements. Required variables cannot define defaults; inv
      #
      #   @param variables [Array<String>, nil] Persisted variable names. In `automatic` mode a non-null array is rejected; in `
      #
      #   @param variables_mode [Symbol, Telnyx::Models::UpdateEmailTemplateRequest::VariablesMode] Controls how `variables` is maintained. Setting `automatic` re-extracts immediat

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
        #   {Telnyx::Models::UpdateEmailTemplateRequest::VariableSchema} for more details.
        #
        #   @param required [Boolean] Whether the variable must be supplied when strict variable validation is enabled
        #
        #   @param default [String] Default value for an optional variable. Rejected when `required` is `true`.
      end

      # Controls how `variables` is maintained. Setting `automatic` re-extracts
      # immediately from the effective subject, HTML body, and text body and rejects a
      # simultaneous non-null array. Setting `explicit` requires the exact non-null
      # array, including valid `[]`. With the mode omitted, a non-null array selects
      # explicit mode, null selects automatic mode, and omitting both fields preserves
      # the current mode. Source-content changes re-extract only in automatic mode.
      #
      # @see Telnyx::Models::UpdateEmailTemplateRequest#variables_mode
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
