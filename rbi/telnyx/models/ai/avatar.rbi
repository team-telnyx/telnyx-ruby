# typed: strong

module Telnyx
  module Models
    module AI
      class Avatar < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Telnyx::AI::Avatar, Telnyx::Internal::AnyHash) }

        # Stable identifier of a Telnyx stock avatar or an organization-owned custom
        # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
        # prefix.
        sig { returns(Telnyx::AI::AvatarID::Variants) }
        attr_accessor :id

        # Whether the avatar is provided by Telnyx or was uploaded by the authenticated
        # organization.
        sig { returns(Telnyx::AI::AvatarType::TaggedSymbol) }
        attr_accessor :avatar_type

        # Indicates that avatar rendering runs on Telnyx-operated infrastructure.
        sig { returns(T::Boolean) }
        attr_accessor :hosted

        # HTTPS image URL suitable for an avatar selection thumbnail. If the URL expires,
        # list or retrieve the avatar again to refresh it.
        sig { returns(String) }
        attr_accessor :image_url

        # Customer-facing avatar name.
        sig { returns(String) }
        attr_accessor :name

        # Avatar provider. The first release supports Telnyx avatars.
        sig { returns(Symbol) }
        attr_accessor :provider

        # MIME type of a custom avatar image.
        sig do
          returns(T.nilable(Telnyx::AI::Avatar::ContentType::TaggedSymbol))
        end
        attr_reader :content_type

        sig do
          params(content_type: Telnyx::AI::Avatar::ContentType::OrSymbol).void
        end
        attr_writer :content_type

        # Time when the custom avatar was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Decoded height of a custom avatar image.
        sig { returns(T.nilable(Integer)) }
        attr_reader :height_px

        sig { params(height_px: Integer).void }
        attr_writer :height_px

        # Expiration time of `image_url`. Omitted when the URL does not expire.
        sig { returns(T.nilable(Time)) }
        attr_reader :image_url_expires_at

        sig { params(image_url_expires_at: Time).void }
        attr_writer :image_url_expires_at

        # Size of a custom avatar image in bytes.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size_bytes

        sig { params(size_bytes: Integer).void }
        attr_writer :size_bytes

        # Time when the custom avatar was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Decoded width of a custom avatar image.
        sig { returns(T.nilable(Integer)) }
        attr_reader :width_px

        sig { params(width_px: Integer).void }
        attr_writer :width_px

        sig do
          params(
            id: T.any(Telnyx::AI::AvatarID::OrSymbol, String),
            avatar_type: Telnyx::AI::AvatarType::OrSymbol,
            image_url: String,
            name: String,
            content_type: Telnyx::AI::Avatar::ContentType::OrSymbol,
            created_at: Time,
            height_px: Integer,
            image_url_expires_at: Time,
            size_bytes: Integer,
            updated_at: Time,
            width_px: Integer,
            hosted: T::Boolean,
            provider: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Stable identifier of a Telnyx stock avatar or an organization-owned custom
          # avatar. Custom avatar IDs are returned by the Avatars API and use the `avatar_`
          # prefix.
          id:,
          # Whether the avatar is provided by Telnyx or was uploaded by the authenticated
          # organization.
          avatar_type:,
          # HTTPS image URL suitable for an avatar selection thumbnail. If the URL expires,
          # list or retrieve the avatar again to refresh it.
          image_url:,
          # Customer-facing avatar name.
          name:,
          # MIME type of a custom avatar image.
          content_type: nil,
          # Time when the custom avatar was created.
          created_at: nil,
          # Decoded height of a custom avatar image.
          height_px: nil,
          # Expiration time of `image_url`. Omitted when the URL does not expire.
          image_url_expires_at: nil,
          # Size of a custom avatar image in bytes.
          size_bytes: nil,
          # Time when the custom avatar was last updated.
          updated_at: nil,
          # Decoded width of a custom avatar image.
          width_px: nil,
          # Indicates that avatar rendering runs on Telnyx-operated infrastructure.
          hosted: true,
          # Avatar provider. The first release supports Telnyx avatars.
          provider: :telnyx
        )
        end

        sig do
          override.returns(
            {
              id: Telnyx::AI::AvatarID::Variants,
              avatar_type: Telnyx::AI::AvatarType::TaggedSymbol,
              hosted: T::Boolean,
              image_url: String,
              name: String,
              provider: Symbol,
              content_type: Telnyx::AI::Avatar::ContentType::TaggedSymbol,
              created_at: Time,
              height_px: Integer,
              image_url_expires_at: Time,
              size_bytes: Integer,
              updated_at: Time,
              width_px: Integer
            }
          )
        end
        def to_hash
        end

        # MIME type of a custom avatar image.
        module ContentType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::Avatar::ContentType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IMAGE_JPEG =
            T.let(:"image/jpeg", Telnyx::AI::Avatar::ContentType::TaggedSymbol)
          IMAGE_PNG =
            T.let(:"image/png", Telnyx::AI::Avatar::ContentType::TaggedSymbol)
          IMAGE_WEBP =
            T.let(:"image/webp", Telnyx::AI::Avatar::ContentType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::Avatar::ContentType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
