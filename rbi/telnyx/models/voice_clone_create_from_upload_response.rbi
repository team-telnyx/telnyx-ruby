# typed: strong

module Telnyx
  module Models
    class VoiceCloneCreateFromUploadResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceCloneCreateFromUploadResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A voice clone object.
      sig do
        returns(
          T.nilable(Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response envelope for a single voice clone.
      sig do
        params(
          data: Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A voice clone object.
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the voice clone.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Timestamp when the voice clone was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Gender of the voice clone.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender::TaggedSymbol
            )
          )
        end
        attr_accessor :gender

        # Voice style description. If not explicitly set on upload, falls back to the
        # source design's prompt text.
        sig { returns(T.nilable(String)) }
        attr_accessor :label

        # ISO 639-1 language code of the voice clone.
        sig { returns(T.nilable(String)) }
        attr_accessor :language

        # Name of the voice clone.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Voice synthesis provider used for this clone.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::TaggedSymbol
            )
          )
        end
        attr_reader :provider

        sig do
          params(
            provider:
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::OrSymbol
          ).void
        end
        attr_writer :provider

        # List of TTS model identifiers supported by this clone's provider.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :provider_supported_models

        sig { params(provider_supported_models: T::Array[String]).void }
        attr_writer :provider_supported_models

        # Provider-specific voice identifier used for TTS synthesis. For Telnyx clones
        # this equals the clone ID; for Minimax it is the Minimax-assigned voice ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :provider_voice_id

        # Identifies the resource type.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # UUID of the source voice design. `null` for upload-based clones.
        sig { returns(T.nilable(String)) }
        attr_accessor :source_voice_design_id

        # Version of the source voice design used. `null` for upload-based clones.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :source_voice_design_version

        # Timestamp when the voice clone was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # A voice clone object.
        sig do
          params(
            id: String,
            created_at: Time,
            gender:
              T.nilable(
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender::OrSymbol
              ),
            label: T.nilable(String),
            language: T.nilable(String),
            name: String,
            provider:
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::OrSymbol,
            provider_supported_models: T::Array[String],
            provider_voice_id: T.nilable(String),
            record_type:
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::RecordType::OrSymbol,
            source_voice_design_id: T.nilable(String),
            source_voice_design_version: T.nilable(Integer),
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the voice clone.
          id: nil,
          # Timestamp when the voice clone was created.
          created_at: nil,
          # Gender of the voice clone.
          gender: nil,
          # Voice style description. If not explicitly set on upload, falls back to the
          # source design's prompt text.
          label: nil,
          # ISO 639-1 language code of the voice clone.
          language: nil,
          # Name of the voice clone.
          name: nil,
          # Voice synthesis provider used for this clone.
          provider: nil,
          # List of TTS model identifiers supported by this clone's provider.
          provider_supported_models: nil,
          # Provider-specific voice identifier used for TTS synthesis. For Telnyx clones
          # this equals the clone ID; for Minimax it is the Minimax-assigned voice ID.
          provider_voice_id: nil,
          # Identifies the resource type.
          record_type: nil,
          # UUID of the source voice design. `null` for upload-based clones.
          source_voice_design_id: nil,
          # Version of the source voice design used. `null` for upload-based clones.
          source_voice_design_version: nil,
          # Timestamp when the voice clone was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              gender:
                T.nilable(
                  Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender::TaggedSymbol
                ),
              label: T.nilable(String),
              language: T.nilable(String),
              name: String,
              provider:
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::TaggedSymbol,
              provider_supported_models: T::Array[String],
              provider_voice_id: T.nilable(String),
              record_type:
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::RecordType::TaggedSymbol,
              source_voice_design_id: T.nilable(String),
              source_voice_design_version: T.nilable(Integer),
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Gender of the voice clone.
        module Gender
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :male,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender::TaggedSymbol
            )
          FEMALE =
            T.let(
              :female,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender::TaggedSymbol
            )
          NEUTRAL =
            T.let(
              :neutral,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Voice synthesis provider used for this clone.
        module Provider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TELNYX =
            T.let(
              :telnyx,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::TaggedSymbol
            )
          TELNYX_2 =
            T.let(
              :Telnyx,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::TaggedSymbol
            )
          MINIMAX =
            T.let(
              :minimax,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::TaggedSymbol
            )
          MINIMAX_2 =
            T.let(
              :Minimax,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::Provider::TaggedSymbol
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
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VOICE_CLONE =
            T.let(
              :voice_clone,
              Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VoiceCloneCreateFromUploadResponse::Data::RecordType::TaggedSymbol
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
