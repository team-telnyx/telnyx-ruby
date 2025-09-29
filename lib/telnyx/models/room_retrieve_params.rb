# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Rooms#retrieve
    class RoomRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute include_sessions
      #   To decide if room sessions should be included in the response.
      #
      #   @return [Boolean, nil]
      optional :include_sessions, Telnyx::Internal::Type::Boolean

      # @!method initialize(include_sessions: nil, request_options: {})
      #   @param include_sessions [Boolean] To decide if room sessions should be included in the response.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
