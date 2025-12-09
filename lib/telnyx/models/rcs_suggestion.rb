# frozen_string_literal: true

module Telnyx
  module Models
    class RcsSuggestion < Telnyx::Internal::Type::BaseModel
      # @!attribute action
      #   When tapped, initiates the corresponding native action on the device.
      #
      #   @return [Telnyx::Models::RcsSuggestion::Action, nil]
      optional :action, -> { Telnyx::RcsSuggestion::Action }

      # @!attribute reply
      #
      #   @return [Telnyx::Models::RcsSuggestion::Reply, nil]
      optional :reply, -> { Telnyx::RcsSuggestion::Reply }

      # @!method initialize(action: nil, reply: nil)
      #   @param action [Telnyx::Models::RcsSuggestion::Action] When tapped, initiates the corresponding native action on the device.
      #
      #   @param reply [Telnyx::Models::RcsSuggestion::Reply]

      # @see Telnyx::Models::RcsSuggestion#action
      class Action < Telnyx::Internal::Type::BaseModel
        # @!attribute create_calendar_event_action
        #   Opens the user's default calendar app and starts the new calendar event flow
        #   with the agent-specified event data pre-filled.
        #
        #   @return [Telnyx::Models::RcsSuggestion::Action::CreateCalendarEventAction, nil]
        optional :create_calendar_event_action, -> { Telnyx::RcsSuggestion::Action::CreateCalendarEventAction }

        # @!attribute dial_action
        #   Opens the user's default dialer app with the agent-specified phone number filled
        #   in.
        #
        #   @return [Telnyx::Models::RcsSuggestion::Action::DialAction, nil]
        optional :dial_action, -> { Telnyx::RcsSuggestion::Action::DialAction }

        # @!attribute fallback_url
        #   Fallback URL to use if a client doesn't support a suggested action. Fallback
        #   URLs open in new browser windows. Maximum 2048 characters.
        #
        #   @return [String, nil]
        optional :fallback_url, String

        # @!attribute open_url_action
        #   Opens the user's default web browser app to the specified URL.
        #
        #   @return [Telnyx::Models::RcsSuggestion::Action::OpenURLAction, nil]
        optional :open_url_action, -> { Telnyx::RcsSuggestion::Action::OpenURLAction }

        # @!attribute postback_data
        #   Payload (base64 encoded) that will be sent to the agent in the user event that
        #   results when the user taps the suggested action. Maximum 2048 characters.
        #
        #   @return [String, nil]
        optional :postback_data, String

        # @!attribute share_location_action
        #   Opens the RCS app's location chooser so the user can pick a location to send
        #   back to the agent.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :share_location_action, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute text
        #   Text that is shown in the suggested action. Maximum 25 characters.
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute view_location_action
        #   Opens the user's default map app and selects the agent-specified location.
        #
        #   @return [Telnyx::Models::RcsSuggestion::Action::ViewLocationAction, nil]
        optional :view_location_action, -> { Telnyx::RcsSuggestion::Action::ViewLocationAction }

        # @!method initialize(create_calendar_event_action: nil, dial_action: nil, fallback_url: nil, open_url_action: nil, postback_data: nil, share_location_action: nil, text: nil, view_location_action: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RcsSuggestion::Action} for more details.
        #
        #   When tapped, initiates the corresponding native action on the device.
        #
        #   @param create_calendar_event_action [Telnyx::Models::RcsSuggestion::Action::CreateCalendarEventAction] Opens the user's default calendar app and starts the new calendar event flow wit
        #
        #   @param dial_action [Telnyx::Models::RcsSuggestion::Action::DialAction] Opens the user's default dialer app with the agent-specified phone number filled
        #
        #   @param fallback_url [String] Fallback URL to use if a client doesn't support a suggested action. Fallback URL
        #
        #   @param open_url_action [Telnyx::Models::RcsSuggestion::Action::OpenURLAction] Opens the user's default web browser app to the specified URL.
        #
        #   @param postback_data [String] Payload (base64 encoded) that will be sent to the agent in the user event that r
        #
        #   @param share_location_action [Hash{Symbol=>Object}] Opens the RCS app's location chooser so the user can pick a location to send bac
        #
        #   @param text [String] Text that is shown in the suggested action. Maximum 25 characters.
        #
        #   @param view_location_action [Telnyx::Models::RcsSuggestion::Action::ViewLocationAction] Opens the user's default map app and selects the agent-specified location.

        # @see Telnyx::Models::RcsSuggestion::Action#create_calendar_event_action
        class CreateCalendarEventAction < Telnyx::Internal::Type::BaseModel
          # @!attribute description
          #   Event description. Maximum 500 characters.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute end_time
          #
          #   @return [Time, nil]
          optional :end_time, Time

          # @!attribute start_time
          #
          #   @return [Time, nil]
          optional :start_time, Time

          # @!attribute title
          #   Event title. Maximum 100 characters.
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(description: nil, end_time: nil, start_time: nil, title: nil)
          #   Opens the user's default calendar app and starts the new calendar event flow
          #   with the agent-specified event data pre-filled.
          #
          #   @param description [String] Event description. Maximum 500 characters.
          #
          #   @param end_time [Time]
          #
          #   @param start_time [Time]
          #
          #   @param title [String] Event title. Maximum 100 characters.
        end

        # @see Telnyx::Models::RcsSuggestion::Action#dial_action
        class DialAction < Telnyx::Internal::Type::BaseModel
          # @!attribute phone_number
          #   Phone number in +E.164 format
          #
          #   @return [String]
          required :phone_number, String

          # @!method initialize(phone_number:)
          #   Opens the user's default dialer app with the agent-specified phone number filled
          #   in.
          #
          #   @param phone_number [String] Phone number in +E.164 format
        end

        # @see Telnyx::Models::RcsSuggestion::Action#open_url_action
        class OpenURLAction < Telnyx::Internal::Type::BaseModel
          # @!attribute application
          #   URL open application, browser or webview.
          #
          #   @return [Symbol, Telnyx::Models::RcsSuggestion::Action::OpenURLAction::Application]
          required :application, enum: -> { Telnyx::RcsSuggestion::Action::OpenURLAction::Application }

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!attribute webview_view_mode
          #
          #   @return [Symbol, Telnyx::Models::RcsSuggestion::Action::OpenURLAction::WebviewViewMode]
          required :webview_view_mode, enum: -> { Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode }

          # @!attribute description
          #   Accessbility description for webview.
          #
          #   @return [String, nil]
          optional :description, String

          # @!method initialize(application:, url:, webview_view_mode:, description: nil)
          #   Opens the user's default web browser app to the specified URL.
          #
          #   @param application [Symbol, Telnyx::Models::RcsSuggestion::Action::OpenURLAction::Application] URL open application, browser or webview.
          #
          #   @param url [String]
          #
          #   @param webview_view_mode [Symbol, Telnyx::Models::RcsSuggestion::Action::OpenURLAction::WebviewViewMode]
          #
          #   @param description [String] Accessbility description for webview.

          # URL open application, browser or webview.
          #
          # @see Telnyx::Models::RcsSuggestion::Action::OpenURLAction#application
          module Application
            extend Telnyx::Internal::Type::Enum

            OPEN_URL_APPLICATION_UNSPECIFIED = :OPEN_URL_APPLICATION_UNSPECIFIED
            BROWSER = :BROWSER
            WEBVIEW = :WEBVIEW

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::RcsSuggestion::Action::OpenURLAction#webview_view_mode
          module WebviewViewMode
            extend Telnyx::Internal::Type::Enum

            WEBVIEW_VIEW_MODE_UNSPECIFIED = :WEBVIEW_VIEW_MODE_UNSPECIFIED
            FULL = :FULL
            HALF = :HALF
            TALL = :TALL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::RcsSuggestion::Action#view_location_action
        class ViewLocationAction < Telnyx::Internal::Type::BaseModel
          # @!attribute label
          #   The label of the pin dropped
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute lat_long
          #
          #   @return [Telnyx::Models::RcsSuggestion::Action::ViewLocationAction::LatLong, nil]
          optional :lat_long, -> { Telnyx::RcsSuggestion::Action::ViewLocationAction::LatLong }

          # @!attribute query
          #   query string (Android only)
          #
          #   @return [String, nil]
          optional :query, String

          # @!method initialize(label: nil, lat_long: nil, query: nil)
          #   Opens the user's default map app and selects the agent-specified location.
          #
          #   @param label [String] The label of the pin dropped
          #
          #   @param lat_long [Telnyx::Models::RcsSuggestion::Action::ViewLocationAction::LatLong]
          #
          #   @param query [String] query string (Android only)

          # @see Telnyx::Models::RcsSuggestion::Action::ViewLocationAction#lat_long
          class LatLong < Telnyx::Internal::Type::BaseModel
            # @!attribute latitude
            #   The latitude in degrees. It must be in the range [-90.0, +90.0].
            #
            #   @return [Float]
            required :latitude, Float

            # @!attribute longitude
            #   The longitude in degrees. It must be in the range [-180.0, +180.0].
            #
            #   @return [Float]
            required :longitude, Float

            # @!method initialize(latitude:, longitude:)
            #   @param latitude [Float] The latitude in degrees. It must be in the range [-90.0, +90.0].
            #
            #   @param longitude [Float] The longitude in degrees. It must be in the range [-180.0, +180.0].
          end
        end
      end

      # @see Telnyx::Models::RcsSuggestion#reply
      class Reply < Telnyx::Internal::Type::BaseModel
        # @!attribute postback_data
        #   Payload (base64 encoded) that will be sent to the agent in the user event that
        #   results when the user taps the suggested action. Maximum 2048 characters.
        #
        #   @return [String, nil]
        optional :postback_data, String

        # @!attribute text
        #   Text that is shown in the suggested reply (maximum 25 characters)
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(postback_data: nil, text: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RcsSuggestion::Reply} for more details.
        #
        #   @param postback_data [String] Payload (base64 encoded) that will be sent to the agent in the user event that r
        #
        #   @param text [String] Text that is shown in the suggested reply (maximum 25 characters)
      end
    end
  end
end
