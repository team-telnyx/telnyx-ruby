# typed: strong

module Telnyx
  module Models
    class OAuthClientListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthClientListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::OAuthClient])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::OAuthClient::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMetaOAuth)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMetaOAuth::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::OAuthClient::OrHash],
          meta: Telnyx::PaginationMetaOAuth::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::OAuthClient],
            meta: Telnyx::PaginationMetaOAuth
          }
        )
      end
      def to_hash
      end
    end
  end
end
