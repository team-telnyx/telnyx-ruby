# typed: strong

module Telnyx
  module Models
    class OAuthClientRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthClientRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::OAuthClient)) }
      attr_reader :data

      sig { params(data: Telnyx::OAuthClient::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::OAuthClient::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::OAuthClient }) }
      def to_hash
      end
    end
  end
end
