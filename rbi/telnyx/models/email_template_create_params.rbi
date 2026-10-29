# typed: strong

module Telnyx
  module Models
    class EmailTemplateCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailTemplateCreateParams, Telnyx::Internal::AnyHash)
        end

      # Letters, numbers, spaces, hyphens, and underscores only.
      sig { returns(String) }
      attr_accessor :name

      # Per-template HTML autoescaping setting. Defaults to `false` for backward
      # compatibility. When `true`, the rendered `html_body` HTML-escapes each Liquid
      # expression's output at the output boundary (after its filters run, before
      # concatenation with literal template markup). Input values are never mutated and
      # `subject`/`text_body` are never autoescaped. The boundary escape is idempotent:
      # HTML entities already present in the output (e.g. from an explicit `escape`
      # filter) are preserved, so an explicit `escape`/`escape_once` is never
      # double-escaped, and markup introduced by any later filter in the chain is still
      # escaped.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :autoescape

      sig { params(autoescape: T::Boolean).void }
      attr_writer :autoescape

      # Liquid template HTML body.
      sig { returns(T.nilable(String)) }
      attr_accessor :html_body

      # Per-template strict variable-validation setting. Defaults to `false` for
      # backward compatibility. When `true`, a send or render that is missing a variable
      # marked `required: true` in `variable_schema` fails with 422 naming the variable.
      # Missing optional variables never fail; their schema `default` (when set) is
      # applied to the render.
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
      # invalid combinations return 422. This is independent of the legacy `variables`
      # array. On render with `strict_variables` enabled: `required` variables must be
      # supplied as non-empty values — absent, `null`, empty string, empty object `{}`,
      # and empty array `[]` all fail with 422 naming the variable, while present values
      # such as `false` and `0` pass (they are present, not empty). Optional variables
      # fall back to their `default` when absent.
      sig { returns(T.nilable(T::Hash[Symbol, Telnyx::VariableSchemaEntry])) }
      attr_accessor :variable_schema

      # Persisted variable names. In `automatic` mode a non-null array is rejected; in
      # `explicit` mode this is the exact manual array and each item is limited to 255
      # Unicode code points.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :variables

      # Controls how `variables` is maintained. If both fields are omitted (or
      # `variables` is null), the template uses `automatic` mode and extracts variable
      # names from the effective subject, HTML body, and text body. A non-null
      # `variables` array with no mode selects `explicit`. `automatic` rejects a
      # simultaneous non-null array; `explicit` requires a non-null array, including
      # valid `[]`, and preserves its exact order, duplicates, and string contents.
      sig do
        returns(
          T.nilable(Telnyx::EmailTemplateCreateParams::VariablesMode::OrSymbol)
        )
      end
      attr_reader :variables_mode

      sig do
        params(
          variables_mode:
            Telnyx::EmailTemplateCreateParams::VariablesMode::OrSymbol
        ).void
      end
      attr_writer :variables_mode

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

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
        ).returns(T.attached_class)
      end
      def self.new(
        # Letters, numbers, spaces, hyphens, and underscores only.
        name:,
        # Per-template HTML autoescaping setting. Defaults to `false` for backward
        # compatibility. When `true`, the rendered `html_body` HTML-escapes each Liquid
        # expression's output at the output boundary (after its filters run, before
        # concatenation with literal template markup). Input values are never mutated and
        # `subject`/`text_body` are never autoescaped. The boundary escape is idempotent:
        # HTML entities already present in the output (e.g. from an explicit `escape`
        # filter) are preserved, so an explicit `escape`/`escape_once` is never
        # double-escaped, and markup introduced by any later filter in the chain is still
        # escaped.
        autoescape: nil,
        # Liquid template HTML body.
        html_body: nil,
        # Per-template strict variable-validation setting. Defaults to `false` for
        # backward compatibility. When `true`, a send or render that is missing a variable
        # marked `required: true` in `variable_schema` fails with 422 naming the variable.
        # Missing optional variables never fail; their schema `default` (when set) is
        # applied to the render.
        strict_variables: nil,
        # Liquid template subject.
        subject: nil,
        # Liquid template text body.
        text_body: nil,
        # Structured variable requirements. Required variables cannot define defaults;
        # invalid combinations return 422. This is independent of the legacy `variables`
        # array. On render with `strict_variables` enabled: `required` variables must be
        # supplied as non-empty values — absent, `null`, empty string, empty object `{}`,
        # and empty array `[]` all fail with 422 naming the variable, while present values
        # such as `false` and `0` pass (they are present, not empty). Optional variables
        # fall back to their `default` when absent.
        variable_schema: nil,
        # Persisted variable names. In `automatic` mode a non-null array is rejected; in
        # `explicit` mode this is the exact manual array and each item is limited to 255
        # Unicode code points.
        variables: nil,
        # Controls how `variables` is maintained. If both fields are omitted (or
        # `variables` is null), the template uses `automatic` mode and extracts variable
        # names from the effective subject, HTML body, and text body. A non-null
        # `variables` array with no mode selects `explicit`. `automatic` rejects a
        # simultaneous non-null array; `explicit` requires a non-null array, including
        # valid `[]`, and preserves its exact order, duplicates, and string contents.
        variables_mode: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            autoescape: T::Boolean,
            html_body: T.nilable(String),
            strict_variables: T::Boolean,
            subject: T.nilable(String),
            text_body: T.nilable(String),
            variable_schema:
              T.nilable(T::Hash[Symbol, Telnyx::VariableSchemaEntry]),
            variables: T.nilable(T::Array[String]),
            variables_mode:
              Telnyx::EmailTemplateCreateParams::VariablesMode::OrSymbol,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Controls how `variables` is maintained. If both fields are omitted (or
      # `variables` is null), the template uses `automatic` mode and extracts variable
      # names from the effective subject, HTML body, and text body. A non-null
      # `variables` array with no mode selects `explicit`. `automatic` rejects a
      # simultaneous non-null array; `explicit` requires a non-null array, including
      # valid `[]`, and preserves its exact order, duplicates, and string contents.
      module VariablesMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailTemplateCreateParams::VariablesMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            Telnyx::EmailTemplateCreateParams::VariablesMode::TaggedSymbol
          )
        EXPLICIT =
          T.let(
            :explicit,
            Telnyx::EmailTemplateCreateParams::VariablesMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EmailTemplateCreateParams::VariablesMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
