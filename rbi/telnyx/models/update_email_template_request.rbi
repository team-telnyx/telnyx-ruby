# typed: strong

module Telnyx
  module Models
    class UpdateEmailTemplateRequest < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UpdateEmailTemplateRequest, Telnyx::Internal::AnyHash)
        end

      # Per-template HTML autoescaping setting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :autoescape

      sig { params(autoescape: T::Boolean).void }
      attr_writer :autoescape

      # Liquid template HTML body.
      sig { returns(T.nilable(String)) }
      attr_accessor :html_body

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Per-template strict variable-validation setting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :strict_variables

      sig { params(strict_variables: T::Boolean).void }
      attr_writer :strict_variables

      # Liquid template subject.
      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      # Liquid template text body.
      sig { returns(T.nilable(String)) }
      attr_accessor :text_body

      # Structured variable requirements. Required variables cannot define defaults;
      # invalid combinations return 422. Set to `null` to clear the schema.
      sig do
        returns(
          T.nilable(
            T::Hash[Symbol, Telnyx::UpdateEmailTemplateRequest::VariableSchema]
          )
        )
      end
      attr_accessor :variable_schema

      # Persisted variable names. In `automatic` mode a non-null array is rejected; in
      # `explicit` mode this is the exact manual array and each item is limited to 255
      # Unicode code points.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :variables

      # Controls how `variables` is maintained. Setting `automatic` re-extracts
      # immediately from the effective subject, HTML body, and text body and rejects a
      # simultaneous non-null array. Setting `explicit` requires the exact non-null
      # array, including valid `[]`. With the mode omitted, a non-null array selects
      # explicit mode, null selects automatic mode, and omitting both fields preserves
      # the current mode. Source-content changes re-extract only in automatic mode.
      sig do
        returns(
          T.nilable(Telnyx::UpdateEmailTemplateRequest::VariablesMode::OrSymbol)
        )
      end
      attr_reader :variables_mode

      sig do
        params(
          variables_mode:
            Telnyx::UpdateEmailTemplateRequest::VariablesMode::OrSymbol
        ).void
      end
      attr_writer :variables_mode

      sig do
        params(
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
          variables: T.nilable(T::Array[String]),
          variables_mode:
            Telnyx::UpdateEmailTemplateRequest::VariablesMode::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
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
        variables_mode: nil
      )
      end

      sig do
        override.returns(
          {
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
                  Telnyx::UpdateEmailTemplateRequest::VariableSchema
                ]
              ),
            variables: T.nilable(T::Array[String]),
            variables_mode:
              Telnyx::UpdateEmailTemplateRequest::VariablesMode::OrSymbol
          }
        )
      end
      def to_hash
      end

      class VariableSchema < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::UpdateEmailTemplateRequest::VariableSchema,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether the variable must be supplied when strict variable validation is
        # enabled.
        sig { returns(T::Boolean) }
        attr_accessor :required

        # Default value for an optional variable. Rejected when `required` is `true`.
        sig { returns(T.nilable(String)) }
        attr_reader :default

        sig { params(default: String).void }
        attr_writer :default

        sig do
          params(required: T::Boolean, default: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Whether the variable must be supplied when strict variable validation is
          # enabled.
          required:,
          # Default value for an optional variable. Rejected when `required` is `true`.
          default: nil
        )
        end

        sig { override.returns({ required: T::Boolean, default: String }) }
        def to_hash
        end
      end

      # Controls how `variables` is maintained. Setting `automatic` re-extracts
      # immediately from the effective subject, HTML body, and text body and rejects a
      # simultaneous non-null array. Setting `explicit` requires the exact non-null
      # array, including valid `[]`. With the mode omitted, a non-null array selects
      # explicit mode, null selects automatic mode, and omitting both fields preserves
      # the current mode. Source-content changes re-extract only in automatic mode.
      module VariablesMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::UpdateEmailTemplateRequest::VariablesMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            Telnyx::UpdateEmailTemplateRequest::VariablesMode::TaggedSymbol
          )
        EXPLICIT =
          T.let(
            :explicit,
            Telnyx::UpdateEmailTemplateRequest::VariablesMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::UpdateEmailTemplateRequest::VariablesMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
