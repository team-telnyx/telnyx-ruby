# typed: strong

module Telnyx
  module Models
    class EmailTemplateCommon < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailTemplateCommon, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Whether HTML autoescaping is enabled for this template. When `true`, only
      # rendered `html_body` expression output is HTML-escaped at the output boundary;
      # `subject` and `text_body` are never autoescaped.
      sig { returns(T::Boolean) }
      attr_accessor :autoescape

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :html_body

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Telnyx::EmailTemplateCommon::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      # Whether strict variable validation is enabled for this template. When `true`,
      # sends and renders that are missing a variable marked `required: true` in
      # `variable_schema` fail with 422 naming the variable.
      sig { returns(T::Boolean) }
      attr_accessor :strict_variables

      sig { returns(T.nilable(String)) }
      attr_accessor :text_body

      sig { returns(Time) }
      attr_accessor :updated_at

      # Structured variable requirements, or `null` when the template uses only the
      # legacy `variables` array.
      sig do
        returns(
          T.nilable(
            T::Hash[Symbol, Telnyx::EmailTemplateCommon::VariableSchema]
          )
        )
      end
      attr_accessor :variable_schema

      # Persisted variable names. In `explicit` mode this array preserves the exact
      # provided order, duplicates, and string contents; in `automatic` mode it is
      # derived from the stored subject and bodies.
      sig { returns(T::Array[String]) }
      attr_accessor :variables

      # `automatic` when variable names are derived from template content; `explicit`
      # when `variables` is the exact manually managed array.
      sig { returns(Telnyx::EmailTemplateCommon::VariablesMode::TaggedSymbol) }
      attr_accessor :variables_mode

      sig do
        params(
          id: String,
          autoescape: T::Boolean,
          created_at: Time,
          html_body: T.nilable(String),
          name: String,
          record_type: Telnyx::EmailTemplateCommon::RecordType::OrSymbol,
          strict_variables: T::Boolean,
          text_body: T.nilable(String),
          updated_at: Time,
          variable_schema:
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::EmailTemplateCommon::VariableSchema::OrHash
              ]
            ),
          variables: T::Array[String],
          variables_mode: Telnyx::EmailTemplateCommon::VariablesMode::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Whether HTML autoescaping is enabled for this template. When `true`, only
        # rendered `html_body` expression output is HTML-escaped at the output boundary;
        # `subject` and `text_body` are never autoescaped.
        autoescape:,
        created_at:,
        html_body:,
        name:,
        record_type:,
        # Whether strict variable validation is enabled for this template. When `true`,
        # sends and renders that are missing a variable marked `required: true` in
        # `variable_schema` fail with 422 naming the variable.
        strict_variables:,
        text_body:,
        updated_at:,
        # Structured variable requirements, or `null` when the template uses only the
        # legacy `variables` array.
        variable_schema:,
        # Persisted variable names. In `explicit` mode this array preserves the exact
        # provided order, duplicates, and string contents; in `automatic` mode it is
        # derived from the stored subject and bodies.
        variables:,
        # `automatic` when variable names are derived from template content; `explicit`
        # when `variables` is the exact manually managed array.
        variables_mode:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            autoescape: T::Boolean,
            created_at: Time,
            html_body: T.nilable(String),
            name: String,
            record_type: Telnyx::EmailTemplateCommon::RecordType::TaggedSymbol,
            strict_variables: T::Boolean,
            text_body: T.nilable(String),
            updated_at: Time,
            variable_schema:
              T.nilable(
                T::Hash[Symbol, Telnyx::EmailTemplateCommon::VariableSchema]
              ),
            variables: T::Array[String],
            variables_mode:
              Telnyx::EmailTemplateCommon::VariablesMode::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailTemplateCommon::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_TEMPLATE =
          T.let(
            :email_template,
            Telnyx::EmailTemplateCommon::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailTemplateCommon::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class VariableSchema < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailTemplateCommon::VariableSchema,
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

      # `automatic` when variable names are derived from template content; `explicit`
      # when `variables` is the exact manually managed array.
      module VariablesMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailTemplateCommon::VariablesMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATIC =
          T.let(
            :automatic,
            Telnyx::EmailTemplateCommon::VariablesMode::TaggedSymbol
          )
        EXPLICIT =
          T.let(
            :explicit,
            Telnyx::EmailTemplateCommon::VariablesMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailTemplateCommon::VariablesMode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
