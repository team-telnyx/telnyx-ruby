# typed: strong

module Telnyx
  module Models
    class EmailTemplate < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::EmailTemplate, Telnyx::Internal::AnyHash) }

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

      sig { returns(Telnyx::EmailTemplate::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      # Whether strict variable validation is enabled for this template. When `true`,
      # sends and renders that are missing a variable marked `required: true` in
      # `variable_schema` fail with 422 naming the variable.
      sig { returns(T::Boolean) }
      attr_accessor :strict_variables

      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      sig { returns(T.nilable(String)) }
      attr_accessor :text_body

      sig { returns(Time) }
      attr_accessor :updated_at

      # Structured variable requirements, or `null` when the template uses only the
      # legacy `variables` array.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Telnyx::EmailTemplate::VariableSchema])
        )
      end
      attr_accessor :variable_schema

      # Legacy unstructured variable names. This path remains supported unchanged.
      sig { returns(T::Array[String]) }
      attr_accessor :variables

      sig do
        params(
          id: String,
          autoescape: T::Boolean,
          created_at: Time,
          html_body: T.nilable(String),
          name: String,
          record_type: Telnyx::EmailTemplate::RecordType::OrSymbol,
          strict_variables: T::Boolean,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          updated_at: Time,
          variable_schema:
            T.nilable(
              T::Hash[Symbol, Telnyx::EmailTemplate::VariableSchema::OrHash]
            ),
          variables: T::Array[String]
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
        subject:,
        text_body:,
        updated_at:,
        # Structured variable requirements, or `null` when the template uses only the
        # legacy `variables` array.
        variable_schema:,
        # Legacy unstructured variable names. This path remains supported unchanged.
        variables:
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
            record_type: Telnyx::EmailTemplate::RecordType::TaggedSymbol,
            strict_variables: T::Boolean,
            subject: T.nilable(String),
            text_body: T.nilable(String),
            updated_at: Time,
            variable_schema:
              T.nilable(T::Hash[Symbol, Telnyx::EmailTemplate::VariableSchema]),
            variables: T::Array[String]
          }
        )
      end
      def to_hash
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailTemplate::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_TEMPLATE =
          T.let(
            :email_template,
            Telnyx::EmailTemplate::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailTemplate::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class VariableSchema < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailTemplate::VariableSchema,
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
