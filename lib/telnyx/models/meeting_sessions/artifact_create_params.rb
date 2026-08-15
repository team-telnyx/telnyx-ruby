# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Artifacts#create
      class ArtifactCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #   Type of artifact to generate from the session.
        #
        #   @return [Symbol, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Type]
        required :type, enum: -> { Telnyx::MeetingSessions::ArtifactCreateParams::Type }

        # @!method initialize(id:, type:, request_options: {})
        #   @param id [String]
        #
        #   @param type [Symbol, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Type] Type of artifact to generate from the session.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Type of artifact to generate from the session.
        module Type
          extend Telnyx::Internal::Type::Enum

          SUMMARY = :summary
          ACTION_ITEMS = :action_items

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
