# typed: strong

module Telnyx
  module Models
    class EmailTemplateRenderParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailTemplateRenderParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # Variables for Liquid template rendering. Non-object values are silently treated
      # as an empty object.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :template_variables

      sig { params(template_variables: T::Hash[Symbol, T.anything]).void }
      attr_writer :template_variables

      sig do
        params(
          id: String,
          template_variables: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Variables for Liquid template rendering. Non-object values are silently treated
        # as an empty object.
        template_variables: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            template_variables: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
