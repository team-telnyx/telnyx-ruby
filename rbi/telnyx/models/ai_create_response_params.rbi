# typed: strong

module Telnyx
  module Models
    class AICreateResponseParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AICreateResponseParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :params

      sig do
        params(
          params: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(params:, request_options: {})
      end

      sig do
        override.returns(
          {
            params: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
