# typed: strong

module Telnyx
  module Models
    module AI
      class AvatarSettingsRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AvatarSettingsRequest, Telnyx::Internal::AnyHash)
          end

        # The Telnyx stock avatar or organization-owned custom avatar to render.
        sig { returns(String) }
        attr_accessor :avatar_id

        # The background to render.
        sig do
          returns(Telnyx::AI::AvatarSettingsRequest::BackgroundID::OrSymbol)
        end
        attr_accessor :background_id

        # Required avatar model identifier, separate from `avatar_id`. The supported value
        # is `foxtrot-1`. Omission, null, and unsupported model identifiers are rejected.
        sig { returns(Telnyx::AI::AvatarSettingsRequest::Model::OrSymbol) }
        attr_accessor :model

        # Selects the Telnyx open-source avatar provider.
        sig { returns(Symbol) }
        attr_accessor :provider

        # **Beta:** Configuration for the Telnyx open-source avatar provider. Use a stock
        # avatar or an organization-owned custom avatar returned by the Avatars API.
        # Discover the available stock catalog with GET /v2/ai/avatars and
        # filter[avatar_type]=stock; follow meta.total_pages to load every page.
        sig do
          params(
            avatar_id: String,
            background_id:
              Telnyx::AI::AvatarSettingsRequest::BackgroundID::OrSymbol,
            model: Telnyx::AI::AvatarSettingsRequest::Model::OrSymbol,
            provider: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The Telnyx stock avatar or organization-owned custom avatar to render.
          avatar_id:,
          # The background to render.
          background_id:,
          # Required avatar model identifier, separate from `avatar_id`. The supported value
          # is `foxtrot-1`. Omission, null, and unsupported model identifiers are rejected.
          model:,
          # Selects the Telnyx open-source avatar provider.
          provider: :telnyx
        )
        end

        sig do
          override.returns(
            {
              avatar_id: String,
              background_id:
                Telnyx::AI::AvatarSettingsRequest::BackgroundID::OrSymbol,
              model: Telnyx::AI::AvatarSettingsRequest::Model::OrSymbol,
              provider: Symbol
            }
          )
        end
        def to_hash
        end

        # The background to render.
        module BackgroundID
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::AvatarSettingsRequest::BackgroundID)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OFFICE =
            T.let(
              :office,
              Telnyx::AI::AvatarSettingsRequest::BackgroundID::TaggedSymbol
            )
          STUDIO =
            T.let(
              :studio,
              Telnyx::AI::AvatarSettingsRequest::BackgroundID::TaggedSymbol
            )
          RECEPTION =
            T.let(
              :reception,
              Telnyx::AI::AvatarSettingsRequest::BackgroundID::TaggedSymbol
            )
          ILLUSTRATED_WORKSPACE =
            T.let(
              :illustrated_workspace,
              Telnyx::AI::AvatarSettingsRequest::BackgroundID::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::AvatarSettingsRequest::BackgroundID::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Required avatar model identifier, separate from `avatar_id`. The supported value
        # is `foxtrot-1`. Omission, null, and unsupported model identifiers are rejected.
        module Model
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::AvatarSettingsRequest::Model)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOXTROT_1 =
            T.let(
              :"foxtrot-1",
              Telnyx::AI::AvatarSettingsRequest::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::AvatarSettingsRequest::Model::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
