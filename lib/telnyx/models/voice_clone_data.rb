# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#list
    class VoiceCloneData < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the voice clone.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #   Timestamp when the voice clone was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute gender
      #   Gender of the voice clone.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneData::Gender, nil]
      optional :gender, enum: -> { Telnyx::VoiceCloneData::Gender }, nil?: true

      # @!attribute label
      #   Voice style description. If not explicitly set on upload, falls back to the
      #   source design's prompt text.
      #
      #   @return [String, nil]
      optional :label, String, nil?: true

      # @!attribute language
      #   ISO 639-1 language code of the voice clone.
      #
      #   @return [String, nil]
      optional :language, String, nil?: true

      # @!attribute model_id
      #   TTS model identifier for the voice clone.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneData::ModelID, nil]
      optional :model_id, enum: -> { Telnyx::VoiceCloneData::ModelID }

      # @!attribute name
      #   Name of the voice clone.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute provider
      #   Voice synthesis provider used for this clone.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneData::Provider, nil]
      optional :provider, enum: -> { Telnyx::VoiceCloneData::Provider }

      # @!attribute provider_supported_models
      #   List of TTS model identifiers supported by this clone's provider.
      #
      #   @return [Array<String>, nil]
      optional :provider_supported_models, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute provider_voice_id
      #   Provider-specific voice identifier used for TTS synthesis. May differ from the
      #   clone UUID depending on the provider and model.
      #
      #   @return [String, nil]
      optional :provider_voice_id, String, nil?: true

      # @!attribute record_type
      #   Identifies the resource type.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneData::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::VoiceCloneData::RecordType }

      # @!attribute source_voice_design_id
      #   UUID of the source voice design. `null` for upload-based clones.
      #
      #   @return [String, nil]
      optional :source_voice_design_id, String, nil?: true

      # @!attribute source_voice_design_version
      #   Version of the source voice design used. `null` for upload-based clones.
      #
      #   @return [Integer, nil]
      optional :source_voice_design_version, Integer, nil?: true

      # @!attribute status
      #   Clone status. pending for Ultra clones while on-prem import is in progress,
      #   active once ready, failed if verification timed out, expired if not kept alive.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneData::Status, nil]
      optional :status, enum: -> { Telnyx::VoiceCloneData::Status }

      # @!attribute updated_at
      #   Timestamp when the voice clone was last updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, created_at: nil, gender: nil, label: nil, language: nil, model_id: nil, name: nil, provider: nil, provider_supported_models: nil, provider_voice_id: nil, record_type: nil, source_voice_design_id: nil, source_voice_design_version: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceCloneData} for more details.
      #
      #   A voice clone object.
      #
      #   @param id [String] Unique identifier for the voice clone.
      #
      #   @param created_at [Time] Timestamp when the voice clone was created.
      #
      #   @param gender [Symbol, Telnyx::Models::VoiceCloneData::Gender, nil] Gender of the voice clone.
      #
      #   @param label [String, nil] Voice style description. If not explicitly set on upload, falls back to the sour
      #
      #   @param language [String, nil] ISO 639-1 language code of the voice clone.
      #
      #   @param model_id [Symbol, Telnyx::Models::VoiceCloneData::ModelID] TTS model identifier for the voice clone.
      #
      #   @param name [String] Name of the voice clone.
      #
      #   @param provider [Symbol, Telnyx::Models::VoiceCloneData::Provider] Voice synthesis provider used for this clone.
      #
      #   @param provider_supported_models [Array<String>] List of TTS model identifiers supported by this clone's provider.
      #
      #   @param provider_voice_id [String, nil] Provider-specific voice identifier used for TTS synthesis. May differ from the c
      #
      #   @param record_type [Symbol, Telnyx::Models::VoiceCloneData::RecordType] Identifies the resource type.
      #
      #   @param source_voice_design_id [String, nil] UUID of the source voice design. `null` for upload-based clones.
      #
      #   @param source_voice_design_version [Integer, nil] Version of the source voice design used. `null` for upload-based clones.
      #
      #   @param status [Symbol, Telnyx::Models::VoiceCloneData::Status] Clone status. pending for Ultra clones while on-prem import is in progress, acti
      #
      #   @param updated_at [Time] Timestamp when the voice clone was last updated.

      # Gender of the voice clone.
      #
      # @see Telnyx::Models::VoiceCloneData#gender
      module Gender
        extend Telnyx::Internal::Type::Enum

        MALE = :male
        FEMALE = :female
        NEUTRAL = :neutral

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # TTS model identifier for the voice clone.
      #
      # @see Telnyx::Models::VoiceCloneData#model_id
      module ModelID
        extend Telnyx::Internal::Type::Enum

        QWEN3_TTS = :Qwen3TTS
        ULTRA = :Ultra
        SPEECH_2_8_TURBO = :"speech-2.8-turbo"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Voice synthesis provider used for this clone.
      #
      # @see Telnyx::Models::VoiceCloneData#provider
      module Provider
        extend Telnyx::Internal::Type::Enum

        TELNYX = :telnyx
        MINIMAX = :minimax

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Identifies the resource type.
      #
      # @see Telnyx::Models::VoiceCloneData#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        VOICE_CLONE = :voice_clone

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Clone status. pending for Ultra clones while on-prem import is in progress,
      # active once ready, failed if verification timed out, expired if not kept alive.
      #
      # @see Telnyx::Models::VoiceCloneData#status
      module Status
        extend Telnyx::Internal::Type::Enum

        ACTIVE = :active
        PENDING = :pending
        FAILED = :failed
        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
