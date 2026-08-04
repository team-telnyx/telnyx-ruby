# typed: strong

module Telnyx
  module Models
    class EmailTemplate < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::EmailTemplate, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :html_body

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Telnyx::EmailTemplate::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      sig { returns(T.nilable(String)) }
      attr_accessor :text_body

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T::Array[String]) }
      attr_accessor :variables

      sig do
        params(
          id: String,
          created_at: Time,
          html_body: T.nilable(String),
          name: String,
          record_type: Telnyx::EmailTemplate::RecordType::OrSymbol,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          updated_at: Time,
          variables: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        html_body:,
        name:,
        record_type:,
        subject:,
        text_body:,
        updated_at:,
        variables:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            html_body: T.nilable(String),
            name: String,
            record_type: Telnyx::EmailTemplate::RecordType::TaggedSymbol,
            subject: T.nilable(String),
            text_body: T.nilable(String),
            updated_at: Time,
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
    end
  end
end
