# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#retrieve_events
    class MeetingSessionRetrieveEventsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute after
      #   Return results with a cursor position after this value.
      #
      #   @return [Integer, nil]
      optional :after, Integer

      # @!attribute limit
      #   Maximum number of results to return per page.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(id:, after: nil, limit: nil, request_options: {})
      #   @param id [String]
      #
      #   @param after [Integer] Return results with a cursor position after this value.
      #
      #   @param limit [Integer] Maximum number of results to return per page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
