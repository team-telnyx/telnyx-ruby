# typed: strong

module Telnyx
  module Models
    class OAuthGrantRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthGrantRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::OAuthGrant)) }
      attr_reader :data

      sig { params(data: Telnyx::OAuthGrant::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::OAuthGrant::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::OAuthGrant }) }
      def to_hash
      end
    end
  end
end
