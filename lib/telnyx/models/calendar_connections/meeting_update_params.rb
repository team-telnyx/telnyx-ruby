# frozen_string_literal: true

module Telnyx
  module Models
    module CalendarConnections
      # @see Telnyx::Resources::CalendarConnections::Meetings#update
      class MeetingUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute meeting_id
        #
        #   @return [String]
        required :meeting_id, String

        # @!attribute bot_will_join
        #   True opts in, false opts out, null follows connection policy. A supported
        #   meeting URL is still required.
        #
        #   @return [Boolean, nil]
        required :bot_will_join, Telnyx::Internal::Type::Boolean, nil?: true

        # @!method initialize(id:, meeting_id:, bot_will_join:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CalendarConnections::MeetingUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param meeting_id [String]
        #
        #   @param bot_will_join [Boolean, nil] True opts in, false opts out, null follows connection policy. A supported meetin
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
