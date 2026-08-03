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

      # Liquid template HTML body.
      sig { returns(T.nilable(String)) }
      attr_accessor :html_body

      # Liquid template subject.
      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      # Liquid template text body.
      sig { returns(T.nilable(String)) }
      attr_accessor :text_body

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
          html_body: T.nilable(String),
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variables: T::Array[String],
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Letters, numbers, spaces, hyphens, and underscores only.
        name:,
        # Liquid template HTML body.
        html_body: nil,
        # Liquid template subject.
        subject: nil,
        # Liquid template text body.
        text_body: nil,
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
            html_body: T.nilable(String),
            subject: T.nilable(String),
            text_body: T.nilable(String),
            variables: T::Array[String],
            idempotency_key: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
