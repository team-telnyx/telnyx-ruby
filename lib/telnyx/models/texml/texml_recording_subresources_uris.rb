# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      class TexmlRecordingSubresourcesUris < Telnyx::Internal::Type::BaseModel
        # @!attribute transcriptions
        #
        #   @return [String, nil]
        optional :transcriptions, String, nil?: true

        # @!method initialize(transcriptions: nil)
        #   Subresources details for a recording if available.
        #
        #   @param transcriptions [String, nil]
      end
    end

    TexmlRecordingSubresourcesUris = Texml::TexmlRecordingSubresourcesUris
  end
end
