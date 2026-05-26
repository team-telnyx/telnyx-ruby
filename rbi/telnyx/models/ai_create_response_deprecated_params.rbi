# typed: strong

module Telnyx
  module Models
    class AICreateResponseDeprecatedParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AICreateResponseDeprecatedParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :body

      sig do
        params(
          body: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
