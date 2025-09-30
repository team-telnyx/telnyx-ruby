# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Recordings#delete
    class RecordingDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::RecordingResponseData, nil]
      optional :data, -> { Telnyx::RecordingResponseData }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::RecordingResponseData]
    end
  end
end
