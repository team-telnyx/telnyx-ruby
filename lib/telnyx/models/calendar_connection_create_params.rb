# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CalendarConnections#create
    class CalendarConnectionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute platform
      #   Calendar provider: Google Calendar or Microsoft Outlook.
      #
      #   @return [Symbol, Telnyx::Models::CalendarConnectionCreateParams::Platform]
      required :platform, enum: -> { Telnyx::CalendarConnectionCreateParams::Platform }

      # @!method initialize(platform:, request_options: {})
      #   @param platform [Symbol, Telnyx::Models::CalendarConnectionCreateParams::Platform] Calendar provider: Google Calendar or Microsoft Outlook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Calendar provider: Google Calendar or Microsoft Outlook.
      module Platform
        extend Telnyx::Internal::Type::Enum

        GOOGLE_CALENDAR = :google_calendar
        MICROSOFT_OUTLOOK = :microsoft_outlook

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
