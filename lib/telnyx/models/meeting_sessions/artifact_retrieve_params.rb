# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Artifacts#retrieve
      class ArtifactRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute artifact_id
        #
        #   @return [String]
        required :artifact_id, String

        # @!method initialize(id:, artifact_id:, request_options: {})
        #   @param id [String]
        #   @param artifact_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
