# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#list_voices
    class TextToSpeechListVoicesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute voices
      #
      #   @return [Array<Telnyx::Models::TextToSpeechListVoicesResponse::Voice>, nil]
      optional :voices,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TextToSpeechListVoicesResponse::Voice] }

      # @!method initialize(voices: nil)
      #   @param voices [Array<Telnyx::Models::TextToSpeechListVoicesResponse::Voice>]

      class Voice < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute accent
        #
        #   @return [String, nil]
        optional :accent, String

        # @!attribute age
        #
        #   @return [String, nil]
        optional :age, String

        # @!attribute gender
        #
        #   @return [String, nil]
        optional :gender, String

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute language
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute provider
        #
        #   @return [String, nil]
        optional :provider, String

        # @!method initialize(id: nil, accent: nil, age: nil, gender: nil, label: nil, language: nil, name: nil, provider: nil)
        #   @param id [String]
        #   @param accent [String]
        #   @param age [String]
        #   @param gender [String]
        #   @param label [String]
        #   @param language [String]
        #   @param name [String]
        #   @param provider [String]
      end
    end
  end
end
