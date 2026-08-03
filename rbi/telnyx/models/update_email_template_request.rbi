# typed: strong

module Telnyx
  module Models
    class UpdateEmailTemplateRequest < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UpdateEmailTemplateRequest, Telnyx::Internal::AnyHash)
        end

      # Liquid template HTML body.
      sig { returns(T.nilable(String)) }
      attr_accessor :html_body

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Liquid template subject.
      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      # Liquid template text body.
      sig { returns(T.nilable(String)) }
      attr_accessor :text_body

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :variables

      sig { params(variables: T::Array[String]).void }
      attr_writer :variables

      sig do
        params(
          html_body: T.nilable(String),
          name: String,
          subject: T.nilable(String),
          text_body: T.nilable(String),
          variables: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Liquid template HTML body.
        html_body: nil,
        name: nil,
        # Liquid template subject.
        subject: nil,
        # Liquid template text body.
        text_body: nil,
        variables: nil
      )
      end

      sig do
        override.returns(
          {
            html_body: T.nilable(String),
            name: String,
            subject: T.nilable(String),
            text_body: T.nilable(String),
            variables: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
