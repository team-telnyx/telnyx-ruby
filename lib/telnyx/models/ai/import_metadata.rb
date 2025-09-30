# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ImportMetadata < Telnyx::Internal::Type::BaseModel
        # @!attribute import_id
        #   ID of the assistant in the provider's system.
        #
        #   @return [String, nil]
        optional :import_id, String

        # @!attribute import_provider
        #   Provider the assistant was imported from.
        #
        #   @return [Symbol, Telnyx::Models::AI::ImportMetadata::ImportProvider, nil]
        optional :import_provider, enum: -> { Telnyx::AI::ImportMetadata::ImportProvider }

        # @!method initialize(import_id: nil, import_provider: nil)
        #   @param import_id [String] ID of the assistant in the provider's system.
        #
        #   @param import_provider [Symbol, Telnyx::Models::AI::ImportMetadata::ImportProvider] Provider the assistant was imported from.

        # Provider the assistant was imported from.
        #
        # @see Telnyx::Models::AI::ImportMetadata#import_provider
        module ImportProvider
          extend Telnyx::Internal::Type::Enum

          ELEVENLABS = :elevenlabs
          VAPI = :vapi

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
