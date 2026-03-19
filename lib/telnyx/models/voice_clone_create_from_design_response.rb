# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create_from_design
    class VoiceCloneCreateFromDesignResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A voice clone object.
      #
      #   @return [Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data }

      # @!method initialize(data: nil)
      #   Response envelope for a single voice clone.
      #
      #   @param data [Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data] A voice clone object.

      # @see Telnyx::Models::VoiceCloneCreateFromDesignResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data::Gender, nil]
        optional :gender,
                 enum: -> { Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data::Gender },
                 nil?: true

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

        # @!attribute name
        #   Name of the voice clone.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #   Identifies the resource type.
        #
        #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data::RecordType }

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

        # @!attribute updated_at
        #   Timestamp when the voice clone was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, created_at: nil, gender: nil, label: nil, language: nil, name: nil, record_type: nil, source_voice_design_id: nil, source_voice_design_version: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data} for more details.
        #
        #   A voice clone object.
        #
        #   @param id [String] Unique identifier for the voice clone.
        #
        #   @param created_at [Time] Timestamp when the voice clone was created.
        #
        #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data::Gender, nil] Gender of the voice clone.
        #
        #   @param label [String, nil] Voice style description. If not explicitly set on upload, falls back to the sour
        #
        #   @param language [String, nil] ISO 639-1 language code of the voice clone.
        #
        #   @param name [String] Name of the voice clone.
        #
        #   @param record_type [Symbol, Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data::RecordType] Identifies the resource type.
        #
        #   @param source_voice_design_id [String, nil] UUID of the source voice design. `null` for upload-based clones.
        #
        #   @param source_voice_design_version [Integer, nil] Version of the source voice design used. `null` for upload-based clones.
        #
        #   @param updated_at [Time] Timestamp when the voice clone was last updated.

        # Gender of the voice clone.
        #
        # @see Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data#gender
        module Gender
          extend Telnyx::Internal::Type::Enum

          MALE = :male
          FEMALE = :female
          NEUTRAL = :neutral

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Identifies the resource type.
        #
        # @see Telnyx::Models::VoiceCloneCreateFromDesignResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          VOICE_CLONE = :voice_clone

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
