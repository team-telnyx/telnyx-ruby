# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      # @see Telnyx::Resources::Rooms::Sessions#retrieve
      class SessionRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute include_participants
        #   To decide if room participants should be included in the response.
        #
        #   @return [Boolean, nil]
        optional :include_participants, Telnyx::Internal::Type::Boolean

        # @!method initialize(include_participants: nil, request_options: {})
        #   @param include_participants [Boolean] To decide if room participants should be included in the response.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
