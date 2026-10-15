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

        # Stable identifier returned by the Avatars API. Discover available stock IDs with
        # GET /v2/ai/avatars and filter[avatar_type]=stock rather than maintaining a fixed
        # list. Custom avatar IDs use the `avatar_` prefix and must belong to the
        # authenticated organization. The service validates that the selected avatar is
        # available.
        sig { returns(String) }
        attr_accessor :avatar_id

        sig do
          params(
            avatar_id: String,
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
          request_options: {}
        )
        end

        sig do
          override.returns(
            { avatar_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
