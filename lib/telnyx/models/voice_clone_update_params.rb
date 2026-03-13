# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#update
    class VoiceCloneUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   New name for the voice clone.
      #
      #   @return [String]
      required :name, String

      # @!attribute gender
      #   Updated gender for the voice clone.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneUpdateParams::Gender, nil]
      optional :gender, enum: -> { Telnyx::VoiceCloneUpdateParams::Gender }

      # @!attribute language
      #   Updated ISO 639-1 language code or `auto`.
      #
      #   @return [String, nil]
      optional :language, String

      # @!method initialize(id:, name:, gender: nil, language: nil, request_options: {})
      #   @param id [String]
      #
      #   @param name [String] New name for the voice clone.
      #
      #   @param gender [Symbol, Telnyx::Models::VoiceCloneUpdateParams::Gender] Updated gender for the voice clone.
      #
      #   @param language [String] Updated ISO 639-1 language code or `auto`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Updated gender for the voice clone.
      module Gender
        extend Telnyx::Internal::Type::Enum

        MALE = :male
        FEMALE = :female
        NEUTRAL = :neutral

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
