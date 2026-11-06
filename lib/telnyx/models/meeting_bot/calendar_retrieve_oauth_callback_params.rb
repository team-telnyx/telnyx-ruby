# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingBot
      # @see Telnyx::Resources::MeetingBot::Calendar#retrieve_oauth_callback
      class CalendarRetrieveOAuthCallbackParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute code
        #   Authorization code supplied by the calendar provider.
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute error
        #   Authorization error supplied by the calendar provider, such as access_denied.
        #
        #   @return [String, nil]
        optional :error, String

        # @!attribute state
        #   Unmodified signed state from the authorization URL.
        #
        #   @return [String, nil]
        optional :state, String

        # @!method initialize(code: nil, error: nil, state: nil, request_options: {})
        #   @param code [String] Authorization code supplied by the calendar provider.
        #
        #   @param error [String] Authorization error supplied by the calendar provider, such as access_denied.
        #
        #   @param state [String] Unmodified signed state from the authorization URL.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
