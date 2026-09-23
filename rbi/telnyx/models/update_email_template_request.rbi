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

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :variables

      sig { params(variables: T::Array[String]).void }
      attr_writer :variables

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
          variables: T::Array[String]
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
        variables: nil
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
            variables: T::Array[String]
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
    end
  end
end
