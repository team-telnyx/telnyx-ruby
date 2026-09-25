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
      sig do
        returns(
          T.nilable(
            T::Hash[Symbol, Telnyx::EmailTemplateCreateParams::VariableSchema]
          )
        )
      end
      attr_accessor :variable_schema

      # Template variables. Auto-extracted from subject/body fields when absent.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :variables

      sig { params(variables: T::Array[String]).void }
      attr_writer :variables

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
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::EmailTemplateCreateParams::VariableSchema::OrHash
              ]
            ),
          variables: T::Array[String],
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
        # Template variables. Auto-extracted from subject/body fields when absent.
        variables: nil,
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
              T.nilable(
                T::Hash[
                  Symbol,
                  Telnyx::EmailTemplateCreateParams::VariableSchema
                ]
              ),
            variables: T::Array[String],
            idempotency_key: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class VariableSchema < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailTemplateCreateParams::VariableSchema,
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
    end
  end
end
