# typed: strong

module Telnyx
  module Models
    class OAuthGrantDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthGrantDeleteResponse,
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
