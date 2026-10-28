# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#list
    class VoiceCloneListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_model_id
      #   Filter by TTS model. Case-insensitive.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneListParams::FilterModelID, nil]
      optional :filter_model_id, enum: -> { Telnyx::VoiceCloneListParams::FilterModelID }

      # @!attribute filter_name
      #   Case-insensitive substring filter on the name field.
      #
      #   @return [String, nil]
      optional :filter_name, String

      # @!attribute filter_provider
      #   Filter by voice synthesis provider. Case-insensitive.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneListParams::FilterProvider, nil]
      optional :filter_provider, enum: -> { Telnyx::VoiceCloneListParams::FilterProvider }

      # @!attribute page_number
      #   Page number for pagination (1-based).
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::VoiceCloneListParams::Sort }

      # @!method initialize(filter_model_id: nil, filter_name: nil, filter_provider: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   @param filter_model_id [Symbol, Telnyx::Models::VoiceCloneListParams::FilterModelID] Filter by TTS model. Case-insensitive.
      #
      #   @param filter_name [String] Case-insensitive substring filter on the name field.
      #
      #   @param filter_provider [Symbol, Telnyx::Models::VoiceCloneListParams::FilterProvider] Filter by voice synthesis provider. Case-insensitive.
      #
      #   @param page_number [Integer] Page number for pagination (1-based).
      #
      #   @param page_size [Integer] Number of results per page.
      #
      #   @param sort [Symbol, Telnyx::Models::VoiceCloneListParams::Sort] Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter by TTS model. Case-insensitive.
      module FilterModelID
        extend Telnyx::Internal::Type::Enum

        QWEN3_TTS = :Qwen3TTS
        ULTRA = :Ultra
        BAYAN = :Bayan
        SPEECH_2_8_TURBO = :"speech-2.8-turbo"
        PRO = :Pro
        TURBO = :Turbo
        URDU = :Urdu

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by voice synthesis provider. Case-insensitive.
      module FilterProvider
        extend Telnyx::Internal::Type::Enum

        TELNYX = :telnyx
        MINIMAX = :minimax

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        NAME = :name
        NAME_DESC = :"-name"
        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
