# typed: strong

module Telnyx
  module Models
    module AI
      class AvatarRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AvatarRetrieveParams, Telnyx::Internal::AnyHash)
          end

        # Stable identifier of a Telnyx stock avatar or an organization-owned custom
        # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
        # prefix.
        sig { returns(T.any(Telnyx::AI::AvatarID::OrSymbol, String)) }
        attr_accessor :avatar_id

        sig do
          params(
            avatar_id: T.any(Telnyx::AI::AvatarID::OrSymbol, String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Stable identifier of a Telnyx stock avatar or an organization-owned custom
          # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
          # prefix.
          avatar_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              avatar_id: T.any(Telnyx::AI::AvatarID::OrSymbol, String),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
