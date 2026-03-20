# typed: strong

module Telnyx
  module Models
    class VoiceDesignRenameResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceDesignRenameResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A summarized voice design object (without version-specific fields).
      sig do
        returns(T.nilable(Telnyx::Models::VoiceDesignRenameResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::VoiceDesignRenameResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response envelope for a voice design after a rename operation (no
      # version-specific fields).
      sig do
        params(
          data: Telnyx::Models::VoiceDesignRenameResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A summarized voice design object (without version-specific fields).
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::VoiceDesignRenameResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::VoiceDesignRenameResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the voice design.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Timestamp when the voice design was first created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Name of the voice design.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Voice synthesis provider used for this design.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::TaggedSymbol
            )
          )
        end
        attr_accessor :provider

        # List of TTS model identifiers supported by this design's provider.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :provider_supported_models

        sig { params(provider_supported_models: T::Array[String]).void }
        attr_writer :provider_supported_models

        # Identifies the resource type.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VoiceDesignRenameResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::VoiceDesignRenameResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # Timestamp when the voice design was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # A summarized voice design object (without version-specific fields).
        sig do
          params(
            id: String,
            created_at: Time,
            name: String,
            provider:
              T.nilable(
                Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::OrSymbol
              ),
            provider_supported_models: T::Array[String],
            record_type:
              Telnyx::Models::VoiceDesignRenameResponse::Data::RecordType::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the voice design.
          id: nil,
          # Timestamp when the voice design was first created.
          created_at: nil,
          # Name of the voice design.
          name: nil,
          # Voice synthesis provider used for this design.
          provider: nil,
          # List of TTS model identifiers supported by this design's provider.
          provider_supported_models: nil,
          # Identifies the resource type.
          record_type: nil,
          # Timestamp when the voice design was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              name: String,
              provider:
                T.nilable(
                  Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::TaggedSymbol
                ),
              provider_supported_models: T::Array[String],
              record_type:
                Telnyx::Models::VoiceDesignRenameResponse::Data::RecordType::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Voice synthesis provider used for this design.
        module Provider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::VoiceDesignRenameResponse::Data::Provider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TELNYX =
            T.let(
              :telnyx,
              Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::TaggedSymbol
            )
          TELNYX_2 =
            T.let(
              :Telnyx,
              Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::TaggedSymbol
            )
          MINIMAX =
            T.let(
              :minimax,
              Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::TaggedSymbol
            )
          MINIMAX_2 =
            T.let(
              :Minimax,
              Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VoiceDesignRenameResponse::Data::Provider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Identifies the resource type.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::VoiceDesignRenameResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VOICE_DESIGN =
            T.let(
              :voice_design,
              Telnyx::Models::VoiceDesignRenameResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VoiceDesignRenameResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
