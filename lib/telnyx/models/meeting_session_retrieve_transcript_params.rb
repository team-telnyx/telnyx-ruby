# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#retrieve_transcript
    class MeetingSessionRetrieveTranscriptParams < Telnyx::Internal::Type::BaseModel
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

      # @!attribute wait_seconds
      #   Long-poll duration in seconds. The server holds the connection open for up to
      #   this many seconds, waiting for new or updated results before returning an empty
      #   response. Set to 0 for an immediate response.
      #
      #   @return [Integer, nil]
      optional :wait_seconds, Integer

      # @!method initialize(id:, after: nil, limit: nil, wait_seconds: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionRetrieveTranscriptParams} for more details.
      #
      #   @param id [String]
      #
      #   @param after [Integer] Return results with a cursor position after this value.
      #
      #   @param limit [Integer] Maximum number of results to return per page.
      #
      #   @param wait_seconds [Integer] Long-poll duration in seconds. The server holds the connection open for up to th
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
