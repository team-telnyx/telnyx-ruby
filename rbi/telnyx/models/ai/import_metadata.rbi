# typed: strong

module Telnyx
  module Models
    module AI
      class ImportMetadata < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ImportMetadata, Telnyx::Internal::AnyHash)
          end

        # ID of the assistant in the provider's system.
        sig { returns(T.nilable(String)) }
        attr_reader :import_id

        sig { params(import_id: String).void }
        attr_writer :import_id

        # Provider the assistant was imported from.
        sig do
          returns(
            T.nilable(Telnyx::AI::ImportMetadata::ImportProvider::TaggedSymbol)
          )
        end
        attr_reader :import_provider

        sig do
          params(
            import_provider:
              Telnyx::AI::ImportMetadata::ImportProvider::OrSymbol
          ).void
        end
        attr_writer :import_provider

        sig do
          params(
            import_id: String,
            import_provider:
              Telnyx::AI::ImportMetadata::ImportProvider::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the assistant in the provider's system.
          import_id: nil,
          # Provider the assistant was imported from.
          import_provider: nil
        )
        end

        sig do
          override.returns(
            {
              import_id: String,
              import_provider:
                Telnyx::AI::ImportMetadata::ImportProvider::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Provider the assistant was imported from.
        module ImportProvider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::ImportMetadata::ImportProvider)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ELEVENLABS =
            T.let(
              :elevenlabs,
              Telnyx::AI::ImportMetadata::ImportProvider::TaggedSymbol
            )
          VAPI =
            T.let(
              :vapi,
              Telnyx::AI::ImportMetadata::ImportProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::ImportMetadata::ImportProvider::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
