# frozen_string_literal: true

module Telnyx
  module Models
    module CalendarConnections
      # @see Telnyx::Resources::CalendarConnections::Meetings#list
      class MeetingListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute from
        #   Window start; defaults to now.
        #
        #   @return [Time, nil]
        optional :from, Time

        # @!attribute to
        #   Window end; defaults to seven days from now.
        #
        #   @return [Time, nil]
        optional :to, Time

        # @!method initialize(id:, from: nil, to: nil, request_options: {})
        #   @param id [String]
        #
        #   @param from [Time] Window start; defaults to now.
        #
        #   @param to [Time] Window end; defaults to seven days from now.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
