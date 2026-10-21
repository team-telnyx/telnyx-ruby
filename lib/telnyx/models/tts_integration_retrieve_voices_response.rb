# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#retrieve_voices
    class TtsIntegrationRetrieveVoicesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute voices
      #
      #   @return [Array<Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice>]
      required :voices,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice] }

      # @!method initialize(voices:)
      #   @param voices [Array<Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice>]

      class Voice < Telnyx::Internal::Type::BaseModel
        # @!attribute voice_id
        #   Unique in the list; no dots. A caller selects the voice as
        #   `<engine name>.<voice_id>`.
        #
        #   @return [String]
        required :voice_id, String

        # @!attribute gender
        #   A display string, for example `male`, `female` or `neutral`.
        #
        #   @return [String, nil]
        optional :gender, String

        # @!attribute language
        #   A BCP-47 tag, at most 35 characters.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute name
        #   A display name.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute provider
        #   A display string.
        #
        #   @return [String, nil]
        optional :provider, String

        # @!method initialize(voice_id:, gender: nil, language: nil, name: nil, provider: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TtsIntegrationRetrieveVoicesResponse::Voice} for more details.
        #
        #   @param voice_id [String] Unique in the list; no dots. A caller selects the voice as `<engine name>.<voice
        #
        #   @param gender [String] A display string, for example `male`, `female` or `neutral`.
        #
        #   @param language [String] A BCP-47 tag, at most 35 characters.
        #
        #   @param name [String] A display name.
        #
        #   @param provider [String] A display string.
      end
    end
  end
end
