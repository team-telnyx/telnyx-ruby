# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#update
    class VoiceDesignUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A summarized voice design object (without version-specific fields).
      #
      #   @return [Telnyx::Models::VoiceDesignUpdateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VoiceDesignUpdateResponse::Data }

      # @!method initialize(data: nil)
      #   Response envelope for a voice design after a rename operation (no
      #   version-specific fields).
      #
      #   @param data [Telnyx::Models::VoiceDesignUpdateResponse::Data] A summarized voice design object (without version-specific fields).

      # @see Telnyx::Models::VoiceDesignUpdateResponse#data
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

        # @!attribute record_type
        #   Identifies the resource type.
        #
        #   @return [Symbol, Telnyx::Models::VoiceDesignUpdateResponse::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Models::VoiceDesignUpdateResponse::Data::RecordType }

        # @!attribute updated_at
        #   Timestamp when the voice design was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, created_at: nil, name: nil, record_type: nil, updated_at: nil)
        #   A summarized voice design object (without version-specific fields).
        #
        #   @param id [String] Unique identifier for the voice design.
        #
        #   @param created_at [Time] Timestamp when the voice design was first created.
        #
        #   @param name [String] Name of the voice design.
        #
        #   @param record_type [Symbol, Telnyx::Models::VoiceDesignUpdateResponse::Data::RecordType] Identifies the resource type.
        #
        #   @param updated_at [Time] Timestamp when the voice design was last updated.

        # Identifies the resource type.
        #
        # @see Telnyx::Models::VoiceDesignUpdateResponse::Data#record_type
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
