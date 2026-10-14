# typed: strong

module Telnyx
  module Models
    module AI
      class AvatarSettingsRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AvatarSettingsRequest, Telnyx::Internal::AnyHash)
          end

        # The Telnyx avatar to render.
        sig { returns(Telnyx::AI::AvatarSettingsRequest::AvatarID::OrSymbol) }
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

        # **Beta:** Configuration for the Telnyx open-source avatar provider. The launch
        # catalog supports six avatars and office, studio, or reception backgrounds.
        sig do
          params(
            avatar_id: Telnyx::AI::AvatarSettingsRequest::AvatarID::OrSymbol,
            background_id:
              Telnyx::AI::AvatarSettingsRequest::BackgroundID::OrSymbol,
            model: Telnyx::AI::AvatarSettingsRequest::Model::OrSymbol,
            provider: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The Telnyx avatar to render.
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
              avatar_id: Telnyx::AI::AvatarSettingsRequest::AvatarID::OrSymbol,
              background_id:
                Telnyx::AI::AvatarSettingsRequest::BackgroundID::OrSymbol,
              model: Telnyx::AI::AvatarSettingsRequest::Model::OrSymbol,
              provider: Symbol
            }
          )
        end
        def to_hash
        end

        # The Telnyx avatar to render.
        module AvatarID
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::AvatarSettingsRequest::AvatarID)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ELENA =
            T.let(
              :elena,
              Telnyx::AI::AvatarSettingsRequest::AvatarID::TaggedSymbol
            )
          BEN =
            T.let(
              :ben,
              Telnyx::AI::AvatarSettingsRequest::AvatarID::TaggedSymbol
            )
          JORDAN =
            T.let(
              :jordan,
              Telnyx::AI::AvatarSettingsRequest::AvatarID::TaggedSymbol
            )
          LIN =
            T.let(
              :lin,
              Telnyx::AI::AvatarSettingsRequest::AvatarID::TaggedSymbol
            )
          AVERY =
            T.let(
              :avery,
              Telnyx::AI::AvatarSettingsRequest::AvatarID::TaggedSymbol
            )
          RAPHAEL =
            T.let(
              :raphael,
              Telnyx::AI::AvatarSettingsRequest::AvatarID::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::AvatarSettingsRequest::AvatarID::TaggedSymbol
              ]
            )
          end
          def self.values
          end
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
