# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#create
    class VoiceDesignCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A voice design object with full version detail.
      #
      #   @return [Telnyx::Models::VoiceDesignCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VoiceDesignCreateResponse::Data }

      # @!method initialize(data: nil)
      #   Response envelope for a single voice design with full version detail.
      #
      #   @param data [Telnyx::Models::VoiceDesignCreateResponse::Data] A voice design object with full version detail.

      # @see Telnyx::Models::VoiceDesignCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the voice design.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   Timestamp when the voice design was first created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute name
        #   Name of the voice design.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute prompt
        #   Natural language prompt used to define the voice style for this version.
        #
        #   @return [String, nil]
        optional :prompt, String

        # @!attribute record_type
        #   Identifies the resource type.
        #
        #   @return [Symbol, Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType }

        # @!attribute text
        #   Sample text used to synthesize this version.
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute updated_at
        #   Timestamp when the voice design was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute version
        #   Version number of this voice design.
        #
        #   @return [Integer, nil]
        optional :version, Integer

        # @!attribute version_created_at
        #   Timestamp when this specific version was created.
        #
        #   @return [Time, nil]
        optional :version_created_at, Time

        # @!attribute voice_sample_size
        #   Size of the voice sample audio in bytes.
        #
        #   @return [Integer, nil]
        optional :voice_sample_size, Integer

        # @!method initialize(id: nil, created_at: nil, name: nil, prompt: nil, record_type: nil, text: nil, updated_at: nil, version: nil, version_created_at: nil, voice_sample_size: nil)
        #   A voice design object with full version detail.
        #
        #   @param id [String] Unique identifier for the voice design.
        #
        #   @param created_at [Time] Timestamp when the voice design was first created.
        #
        #   @param name [String] Name of the voice design.
        #
        #   @param prompt [String] Natural language prompt used to define the voice style for this version.
        #
        #   @param record_type [Symbol, Telnyx::Models::VoiceDesignCreateResponse::Data::RecordType] Identifies the resource type.
        #
        #   @param text [String] Sample text used to synthesize this version.
        #
        #   @param updated_at [Time] Timestamp when the voice design was last updated.
        #
        #   @param version [Integer] Version number of this voice design.
        #
        #   @param version_created_at [Time] Timestamp when this specific version was created.
        #
        #   @param voice_sample_size [Integer] Size of the voice sample audio in bytes.

        # Identifies the resource type.
        #
        # @see Telnyx::Models::VoiceDesignCreateResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          VOICE_DESIGN = :voice_design

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
