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
      attr_accessor :response_request

      sig do
        params(
          response_request: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(response_request:, request_options: {})
      end

      sig do
        override.returns(
          {
            response_request: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
