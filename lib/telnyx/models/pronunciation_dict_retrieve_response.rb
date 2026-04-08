# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PronunciationDicts#retrieve
    class PronunciationDictRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A pronunciation dictionary record.
      #
      #   @return [Telnyx::Models::PronunciationDictData, nil]
      optional :data, -> { Telnyx::PronunciationDictData }

      # @!method initialize(data: nil)
      #   Response containing a single pronunciation dictionary.
      #
      #   @param data [Telnyx::Models::PronunciationDictData] A pronunciation dictionary record.
    end
  end
end
