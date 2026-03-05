# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Recordings#delete
    class RecordingDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute recording_id
      #
      #   @return [String]
      required :recording_id, String

      # @!method initialize(recording_id:, request_options: {})
      #   @param recording_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
