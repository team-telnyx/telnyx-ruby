# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#list
    class VoiceDesignListResponse < Telnyx::Internal::Type::BaseModel
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

      # @!attribute provider
      #   Voice synthesis provider used for this design.
      #
      #   @return [Symbol, Telnyx::Models::VoiceDesignListResponse::Provider, nil]
      optional :provider, enum: -> { Telnyx::Models::VoiceDesignListResponse::Provider }, nil?: true

      # @!attribute provider_supported_models
      #   List of TTS model identifiers supported by this design's provider.
      #
      #   @return [Array<String>, nil]
      optional :provider_supported_models, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute record_type
      #   Identifies the resource type.
      #
      #   @return [Symbol, Telnyx::Models::VoiceDesignListResponse::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::Models::VoiceDesignListResponse::RecordType }

      # @!attribute updated_at
      #   Timestamp when the voice design was last updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, created_at: nil, name: nil, provider: nil, provider_supported_models: nil, record_type: nil, updated_at: nil)
      #   A summarized voice design object (without version-specific fields).
      #
      #   @param id [String] Unique identifier for the voice design.
      #
      #   @param created_at [Time] Timestamp when the voice design was first created.
      #
      #   @param name [String] Name of the voice design.
      #
      #   @param provider [Symbol, Telnyx::Models::VoiceDesignListResponse::Provider, nil] Voice synthesis provider used for this design.
      #
      #   @param provider_supported_models [Array<String>] List of TTS model identifiers supported by this design's provider.
      #
      #   @param record_type [Symbol, Telnyx::Models::VoiceDesignListResponse::RecordType] Identifies the resource type.
      #
      #   @param updated_at [Time] Timestamp when the voice design was last updated.

      # Voice synthesis provider used for this design.
      #
      # @see Telnyx::Models::VoiceDesignListResponse#provider
      module Provider
        extend Telnyx::Internal::Type::Enum

        TELNYX = :telnyx
        TELNYX_2 = :Telnyx
        MINIMAX = :minimax
        MINIMAX_2 = :Minimax

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Identifies the resource type.
      #
      # @see Telnyx::Models::VoiceDesignListResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        VOICE_DESIGN = :voice_design

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
