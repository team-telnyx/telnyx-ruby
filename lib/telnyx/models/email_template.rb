# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailTemplates#list
    class EmailTemplate < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute autoescape
      #   Whether HTML autoescaping is enabled for this template. When `true`, only
      #   rendered `html_body` expression output is HTML-escaped at the output boundary;
      #   `subject` and `text_body` are never autoescaped.
      #
      #   @return [Boolean]
      required :autoescape, Telnyx::Internal::Type::Boolean

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute html_body
      #
      #   @return [String, nil]
      required :html_body, String, nil?: true

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::EmailTemplate::RecordType]
      required :record_type, enum: -> { Telnyx::EmailTemplate::RecordType }

      # @!attribute strict_variables
      #   Whether strict variable validation is enabled for this template. When `true`,
      #   sends and renders that are missing a variable marked `required: true` in
      #   `variable_schema` fail with 422 naming the variable.
      #
      #   @return [Boolean]
      required :strict_variables, Telnyx::Internal::Type::Boolean

      # @!attribute subject
      #
      #   @return [String, nil]
      required :subject, String, nil?: true

      # @!attribute text_body
      #
      #   @return [String, nil]
      required :text_body, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute variable_schema
      #   Structured variable requirements, or `null` when the template uses only the
      #   legacy `variables` array.
      #
      #   @return [Hash{Symbol=>Telnyx::Models::EmailTemplate::VariableSchema}, nil]
      required :variable_schema,
               -> { Telnyx::Internal::Type::HashOf[Telnyx::EmailTemplate::VariableSchema] },
               nil?: true

      # @!attribute variables
      #   Legacy unstructured variable names. This path remains supported unchanged.
      #
      #   @return [Array<String>]
      required :variables, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, autoescape:, created_at:, html_body:, name:, record_type:, strict_variables:, subject:, text_body:, updated_at:, variable_schema:, variables:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailTemplate} for more details.
      #
      #   @param id [String]
      #
      #   @param autoescape [Boolean] Whether HTML autoescaping is enabled for this template. When `true`, only render
      #
      #   @param created_at [Time]
      #
      #   @param html_body [String, nil]
      #
      #   @param name [String]
      #
      #   @param record_type [Symbol, Telnyx::Models::EmailTemplate::RecordType]
      #
      #   @param strict_variables [Boolean] Whether strict variable validation is enabled for this template. When `true`, se
      #
      #   @param subject [String, nil]
      #
      #   @param text_body [String, nil]
      #
      #   @param updated_at [Time]
      #
      #   @param variable_schema [Hash{Symbol=>Telnyx::Models::EmailTemplate::VariableSchema}, nil] Structured variable requirements, or `null` when the template uses only the lega
      #
      #   @param variables [Array<String>] Legacy unstructured variable names. This path remains supported unchanged.

      # @see Telnyx::Models::EmailTemplate#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_TEMPLATE = :email_template

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
        #   {Telnyx::Models::EmailTemplate::VariableSchema} for more details.
        #
        #   @param required [Boolean] Whether the variable must be supplied when strict variable validation is enabled
        #
        #   @param default [String] Default value for an optional variable. Rejected when `required` is `true`.
      end
    end
  end
end
