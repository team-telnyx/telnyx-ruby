# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#retrieve_participant
    class ConferenceRetrieveParticipantParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute participant_id
      #
      #   @return [String]
      required :participant_id, String

      # @!method initialize(id:, participant_id:, request_options: {})
      #   @param id [String]
      #   @param participant_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
