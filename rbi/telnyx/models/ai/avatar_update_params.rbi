# typed: strong

module Telnyx
  module Models
    module AI
      class AvatarUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AvatarUpdateParams, Telnyx::Internal::AnyHash)
          end

        # Stable identifier of a Telnyx stock avatar or an organization-owned custom
        # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
        # prefix.
        sig { returns(T.any(Telnyx::AI::AvatarID::OrSymbol, String)) }
        attr_accessor :avatar_id

        # New customer-facing name of the custom avatar.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            avatar_id: T.any(Telnyx::AI::AvatarID::OrSymbol, String),
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Stable identifier of a Telnyx stock avatar or an organization-owned custom
          # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
          # prefix.
          avatar_id:,
          # New customer-facing name of the custom avatar.
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              avatar_id: T.any(Telnyx::AI::AvatarID::OrSymbol, String),
              name: String,
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
