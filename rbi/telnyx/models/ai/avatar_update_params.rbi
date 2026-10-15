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

        # Stable identifier returned by the Avatars API. Discover available stock IDs with
        # GET /v2/ai/avatars and filter[avatar_type]=stock rather than maintaining a fixed
        # list. Custom avatar IDs use the `avatar_` prefix and must belong to the
        # authenticated organization. The service validates that the selected avatar is
        # available.
        sig { returns(String) }
        attr_accessor :avatar_id

        # New customer-facing name of the custom avatar.
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            avatar_id: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Stable identifier returned by the Avatars API. Discover available stock IDs with
          # GET /v2/ai/avatars and filter[avatar_type]=stock rather than maintaining a fixed
          # list. Custom avatar IDs use the `avatar_` prefix and must belong to the
          # authenticated organization. The service validates that the selected avatar is
          # available.
          avatar_id:,
          # New customer-facing name of the custom avatar.
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              avatar_id: String,
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
