# typed: strong

module Telnyx
  module Models
    module AI
      class AvatarListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AvatarListParams, Telnyx::Internal::AnyHash)
          end

        # Return only stock or custom avatars.
        sig { returns(T.nilable(Telnyx::AI::AvatarType::OrSymbol)) }
        attr_reader :filter_avatar_type

        sig do
          params(filter_avatar_type: Telnyx::AI::AvatarType::OrSymbol).void
        end
        attr_writer :filter_avatar_type

        # Return the avatar with this exact ID.
        sig do
          returns(T.nilable(T.any(Telnyx::AI::AvatarID::OrSymbol, String)))
        end
        attr_reader :filter_id

        sig do
          params(filter_id: T.any(Telnyx::AI::AvatarID::OrSymbol, String)).void
        end
        attr_writer :filter_id

        # Return avatars whose names contain this value, using case-insensitive matching.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_name

        sig { params(filter_name: String).void }
        attr_writer :filter_name

        # Page number to retrieve, starting at 1.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Number of avatars to return per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter_avatar_type: Telnyx::AI::AvatarType::OrSymbol,
            filter_id: T.any(Telnyx::AI::AvatarID::OrSymbol, String),
            filter_name: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
              filter_avatar_type: Telnyx::AI::AvatarType::OrSymbol,
              filter_id: T.any(Telnyx::AI::AvatarID::OrSymbol, String),
              filter_name: String,
              page_number: Integer,
              page_size: Integer,
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
