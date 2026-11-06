# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CalendarConnections#create
    class CalendarConnectionCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CalendarConnectionCreateResponse::Data]
      required :data, -> { Telnyx::Models::CalendarConnectionCreateResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::CalendarConnectionCreateResponse::Data]

      # @see Telnyx::Models::CalendarConnectionCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute oauth_url
        #   Open in a browser to authorize calendar access.
        #
        #   @return [String]
        required :oauth_url, String

        # @!attribute platform
        #   Calendar provider: Google Calendar or Microsoft Outlook.
        #
        #   @return [Symbol, Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform]
        required :platform, enum: -> { Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform }

        # @!attribute status
        #   Authorization has not completed.
        #
        #   @return [Symbol, :pending_oauth]
        required :status, const: :pending_oauth

        # @!method initialize(oauth_url:, platform:, status: :pending_oauth)
        #   @param oauth_url [String] Open in a browser to authorize calendar access.
        #
        #   @param platform [Symbol, Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform] Calendar provider: Google Calendar or Microsoft Outlook.
        #
        #   @param status [Symbol, :pending_oauth] Authorization has not completed.

        # Calendar provider: Google Calendar or Microsoft Outlook.
        #
        # @see Telnyx::Models::CalendarConnectionCreateResponse::Data#platform
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
end
