# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Avatars#list
      class Avatar < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Stable identifier of a Telnyx stock avatar or an organization-owned custom
        #   avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
        #   prefix.
        #
        #   @return [Symbol, String, Telnyx::Models::AI::AvatarID]
        required :id, union: -> { Telnyx::AI::AvatarID }

        # @!attribute avatar_type
        #   Whether the avatar is provided by Telnyx or was uploaded by the authenticated
        #   organization.
        #
        #   @return [Symbol, Telnyx::Models::AI::AvatarType]
        required :avatar_type, enum: -> { Telnyx::AI::AvatarType }

        # @!attribute hosted
        #   Indicates that avatar rendering runs on Telnyx-operated infrastructure.
        #
        #   @return [Boolean, true]
        required :hosted, const: true

        # @!attribute image_url
        #   HTTPS image URL suitable for an avatar selection thumbnail. If the URL expires,
        #   list or retrieve the avatar again to refresh it.
        #
        #   @return [String]
        required :image_url, String

        # @!attribute name
        #   Customer-facing avatar name.
        #
        #   @return [String]
        required :name, String

        # @!attribute provider
        #   Avatar provider. The first release supports Telnyx avatars.
        #
        #   @return [Symbol, :telnyx]
        required :provider, const: :telnyx

        # @!attribute content_type
        #   MIME type of a custom avatar image.
        #
        #   @return [Symbol, Telnyx::Models::AI::Avatar::ContentType, nil]
        optional :content_type, enum: -> { Telnyx::AI::Avatar::ContentType }

        # @!attribute created_at
        #   Time when the custom avatar was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute height_px
        #   Decoded height of a custom avatar image.
        #
        #   @return [Integer, nil]
        optional :height_px, Integer

        # @!attribute image_url_expires_at
        #   Expiration time of `image_url`. Omitted when the URL does not expire.
        #
        #   @return [Time, nil]
        optional :image_url_expires_at, Time

        # @!attribute size_bytes
        #   Size of a custom avatar image in bytes.
        #
        #   @return [Integer, nil]
        optional :size_bytes, Integer

        # @!attribute updated_at
        #   Time when the custom avatar was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute width_px
        #   Decoded width of a custom avatar image.
        #
        #   @return [Integer, nil]
        optional :width_px, Integer

        # @!method initialize(id:, avatar_type:, image_url:, name:, content_type: nil, created_at: nil, height_px: nil, image_url_expires_at: nil, size_bytes: nil, updated_at: nil, width_px: nil, hosted: true, provider: :telnyx)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::Avatar} for more details.
        #
        #   @param id [Symbol, String, Telnyx::Models::AI::AvatarID] Stable identifier of a Telnyx stock avatar or an organization-owned custom avata
        #
        #   @param avatar_type [Symbol, Telnyx::Models::AI::AvatarType] Whether the avatar is provided by Telnyx or was uploaded by the authenticated or
        #
        #   @param image_url [String] HTTPS image URL suitable for an avatar selection thumbnail. If the URL expires,
        #
        #   @param name [String] Customer-facing avatar name.
        #
        #   @param content_type [Symbol, Telnyx::Models::AI::Avatar::ContentType] MIME type of a custom avatar image.
        #
        #   @param created_at [Time] Time when the custom avatar was created.
        #
        #   @param height_px [Integer] Decoded height of a custom avatar image.
        #
        #   @param image_url_expires_at [Time] Expiration time of `image_url`. Omitted when the URL does not expire.
        #
        #   @param size_bytes [Integer] Size of a custom avatar image in bytes.
        #
        #   @param updated_at [Time] Time when the custom avatar was last updated.
        #
        #   @param width_px [Integer] Decoded width of a custom avatar image.
        #
        #   @param hosted [Boolean, true] Indicates that avatar rendering runs on Telnyx-operated infrastructure.
        #
        #   @param provider [Symbol, :telnyx] Avatar provider. The first release supports Telnyx avatars.

        # MIME type of a custom avatar image.
        #
        # @see Telnyx::Models::AI::Avatar#content_type
        module ContentType
          extend Telnyx::Internal::Type::Enum

          IMAGE_JPEG = :"image/jpeg"
          IMAGE_PNG = :"image/png"
          IMAGE_WEBP = :"image/webp"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
