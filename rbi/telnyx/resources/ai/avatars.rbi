# typed: strong

module Telnyx
  module Resources
    class AI
      # Create and manage real-time AI avatars
      class Avatars
        # Uploads an image, validates its file type, size, safe decoding, and resolution,
        # stores it in Telnyx-managed private storage, and creates an avatar owned by the
        # authenticated organization. Creating an avatar does not update an AI Assistant;
        # use the returned ID separately wherever the avatar is consumed. The avatar image
        # is stored independently from the rendering model and background, which are
        # selected where the avatar is consumed. Supported image types are JPEG, PNG, and
        # WebP. Images may be up to 10 MiB, must be between 256 and 8192 pixels on each
        # side, and may contain at most 40 megapixels. A per-organization custom-avatar
        # quota applies; the create request returns an error when the quota is reached.
        # For best results, use a 16:9 landscape image, preferably 1920 by 1080 pixels and
        # at least 1280 by 720 pixels. Show one centered, front-facing person from the
        # shoulders up, keep the full head and hair visible with space around it, and use
        # a sharp, evenly lit image with unobstructed eyes and mouth. Use a transparent
        # PNG or WebP when the avatar will be combined with a selectable background. These
        # composition recommendations are not enforced in the first release; the first
        # release does not validate the number of faces, pose, or image content.
        sig do
          params(
            image_file: Telnyx::Internal::FileInput,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::AvatarResponse)
        end
        def create(
          # JPEG, PNG, or WebP image file. The maximum file size is 10 MiB.
          image_file:,
          # Customer-facing name of the custom avatar.
          name:,
          request_options: {}
        )
        end

        # Returns a Telnyx stock avatar or a custom avatar owned by the authenticated
        # organization. A custom avatar belonging to another organization is returned as
        # not found.
        sig do
          params(
            avatar_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::AvatarResponse)
        end
        def retrieve(
          # Stable identifier returned by the Avatars API. Discover available stock IDs with
          # GET /v2/ai/avatars and filter[avatar_type]=stock rather than maintaining a fixed
          # list. Custom avatar IDs use the `avatar_` prefix and must belong to the
          # authenticated organization. The service validates that the selected avatar is
          # available.
          avatar_id,
          request_options: {}
        )
        end

        # Updates the customer-facing name of a custom avatar owned by the authenticated
        # organization. Stock avatars cannot be modified. To replace the image, create a
        # new custom avatar so existing references keep their original content.
        sig do
          params(
            avatar_id: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::AvatarResponse)
        end
        def update(
          # Stable identifier returned by the Avatars API. Discover available stock IDs with
          # GET /v2/ai/avatars and filter[avatar_type]=stock rather than maintaining a fixed
          # list. Custom avatar IDs use the `avatar_` prefix and must belong to the
          # authenticated organization. The service validates that the selected avatar is
          # available.
          avatar_id,
          # New customer-facing name of the custom avatar.
          name:,
          request_options: {}
        )
        end

        # Returns a paginated list of the Telnyx stock avatars and custom avatars
        # available to the authenticated organization. Custom avatars owned by other
        # organizations are never returned. The `image_url` value is suitable for
        # displaying a thumbnail and may be refreshed by listing or retrieving the avatar
        # again. `suggested_voice_id` recommends a compatible Telnyx voice for stock
        # avatars and is an empty string for custom avatars; it does not change an AI
        # Assistant's voice automatically.
        sig do
          params(
            filter_avatar_type: Telnyx::AI::AvatarType::OrSymbol,
            filter_id: String,
            filter_name: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::AI::Avatar])
        end
        def list(
          # Return only stock or custom avatars.
          filter_avatar_type: nil,
          # Return the avatar with this exact ID.
          filter_id: nil,
          # Return avatars whose names contain this value, using case-insensitive matching.
          filter_name: nil,
          # Page number to retrieve, starting at 1.
          page_number: nil,
          # Number of avatars to return per page.
          page_size: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
