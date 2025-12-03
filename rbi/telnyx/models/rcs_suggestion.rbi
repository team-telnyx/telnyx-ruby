# typed: strong

module Telnyx
  module Models
    class RcsSuggestion < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::RcsSuggestion, Telnyx::Internal::AnyHash) }

      # When tapped, initiates the corresponding native action on the device.
      sig { returns(T.nilable(Telnyx::RcsSuggestion::Action)) }
      attr_reader :action

      sig { params(action: Telnyx::RcsSuggestion::Action::OrHash).void }
      attr_writer :action

      sig { returns(T.nilable(Telnyx::RcsSuggestion::Reply)) }
      attr_reader :reply

      sig { params(reply: Telnyx::RcsSuggestion::Reply::OrHash).void }
      attr_writer :reply

      sig do
        params(
          action: Telnyx::RcsSuggestion::Action::OrHash,
          reply: Telnyx::RcsSuggestion::Reply::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # When tapped, initiates the corresponding native action on the device.
        action: nil,
        reply: nil
      )
      end

      sig do
        override.returns(
          {
            action: Telnyx::RcsSuggestion::Action,
            reply: Telnyx::RcsSuggestion::Reply
          }
        )
      end
      def to_hash
      end

      class Action < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RcsSuggestion::Action, Telnyx::Internal::AnyHash)
          end

        # Opens the user's default calendar app and starts the new calendar event flow
        # with the agent-specified event data pre-filled.
        sig do
          returns(
            T.nilable(Telnyx::RcsSuggestion::Action::CreateCalendarEventAction)
          )
        end
        attr_reader :create_calendar_event_action

        sig do
          params(
            create_calendar_event_action:
              Telnyx::RcsSuggestion::Action::CreateCalendarEventAction::OrHash
          ).void
        end
        attr_writer :create_calendar_event_action

        # Opens the user's default dialer app with the agent-specified phone number filled
        # in.
        sig { returns(T.nilable(Telnyx::RcsSuggestion::Action::DialAction)) }
        attr_reader :dial_action

        sig do
          params(
            dial_action: Telnyx::RcsSuggestion::Action::DialAction::OrHash
          ).void
        end
        attr_writer :dial_action

        # Fallback URL to use if a client doesn't support a suggested action. Fallback
        # URLs open in new browser windows. Maximum 2048 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :fallback_url

        sig { params(fallback_url: String).void }
        attr_writer :fallback_url

        # Opens the user's default web browser app to the specified URL.
        sig { returns(T.nilable(Telnyx::RcsSuggestion::Action::OpenURLAction)) }
        attr_reader :open_url_action

        sig do
          params(
            open_url_action:
              Telnyx::RcsSuggestion::Action::OpenURLAction::OrHash
          ).void
        end
        attr_writer :open_url_action

        # Payload (base64 encoded) that will be sent to the agent in the user event that
        # results when the user taps the suggested action. Maximum 2048 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :postback_data

        sig { params(postback_data: String).void }
        attr_writer :postback_data

        # Opens the RCS app's location chooser so the user can pick a location to send
        # back to the agent.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :share_location_action

        sig { params(share_location_action: T.anything).void }
        attr_writer :share_location_action

        # Text that is shown in the suggested action. Maximum 25 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        # Opens the user's default map app and selects the agent-specified location.
        sig do
          returns(T.nilable(Telnyx::RcsSuggestion::Action::ViewLocationAction))
        end
        attr_reader :view_location_action

        sig do
          params(
            view_location_action:
              Telnyx::RcsSuggestion::Action::ViewLocationAction::OrHash
          ).void
        end
        attr_writer :view_location_action

        # When tapped, initiates the corresponding native action on the device.
        sig do
          params(
            create_calendar_event_action:
              Telnyx::RcsSuggestion::Action::CreateCalendarEventAction::OrHash,
            dial_action: Telnyx::RcsSuggestion::Action::DialAction::OrHash,
            fallback_url: String,
            open_url_action:
              Telnyx::RcsSuggestion::Action::OpenURLAction::OrHash,
            postback_data: String,
            share_location_action: T.anything,
            text: String,
            view_location_action:
              Telnyx::RcsSuggestion::Action::ViewLocationAction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Opens the user's default calendar app and starts the new calendar event flow
          # with the agent-specified event data pre-filled.
          create_calendar_event_action: nil,
          # Opens the user's default dialer app with the agent-specified phone number filled
          # in.
          dial_action: nil,
          # Fallback URL to use if a client doesn't support a suggested action. Fallback
          # URLs open in new browser windows. Maximum 2048 characters.
          fallback_url: nil,
          # Opens the user's default web browser app to the specified URL.
          open_url_action: nil,
          # Payload (base64 encoded) that will be sent to the agent in the user event that
          # results when the user taps the suggested action. Maximum 2048 characters.
          postback_data: nil,
          # Opens the RCS app's location chooser so the user can pick a location to send
          # back to the agent.
          share_location_action: nil,
          # Text that is shown in the suggested action. Maximum 25 characters.
          text: nil,
          # Opens the user's default map app and selects the agent-specified location.
          view_location_action: nil
        )
        end

        sig do
          override.returns(
            {
              create_calendar_event_action:
                Telnyx::RcsSuggestion::Action::CreateCalendarEventAction,
              dial_action: Telnyx::RcsSuggestion::Action::DialAction,
              fallback_url: String,
              open_url_action: Telnyx::RcsSuggestion::Action::OpenURLAction,
              postback_data: String,
              share_location_action: T.anything,
              text: String,
              view_location_action:
                Telnyx::RcsSuggestion::Action::ViewLocationAction
            }
          )
        end
        def to_hash
        end

        class CreateCalendarEventAction < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RcsSuggestion::Action::CreateCalendarEventAction,
                Telnyx::Internal::AnyHash
              )
            end

          # Event description. Maximum 500 characters.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(Time)) }
          attr_reader :end_time

          sig { params(end_time: Time).void }
          attr_writer :end_time

          sig { returns(T.nilable(Time)) }
          attr_reader :start_time

          sig { params(start_time: Time).void }
          attr_writer :start_time

          # Event title. Maximum 100 characters.
          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          # Opens the user's default calendar app and starts the new calendar event flow
          # with the agent-specified event data pre-filled.
          sig do
            params(
              description: String,
              end_time: Time,
              start_time: Time,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Event description. Maximum 500 characters.
            description: nil,
            end_time: nil,
            start_time: nil,
            # Event title. Maximum 100 characters.
            title: nil
          )
          end

          sig do
            override.returns(
              {
                description: String,
                end_time: Time,
                start_time: Time,
                title: String
              }
            )
          end
          def to_hash
          end
        end

        class DialAction < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RcsSuggestion::Action::DialAction,
                Telnyx::Internal::AnyHash
              )
            end

          # Phone number in +E.164 format
          sig { returns(String) }
          attr_accessor :phone_number

          # Opens the user's default dialer app with the agent-specified phone number filled
          # in.
          sig { params(phone_number: String).returns(T.attached_class) }
          def self.new(
            # Phone number in +E.164 format
            phone_number:
          )
          end

          sig { override.returns({ phone_number: String }) }
          def to_hash
          end
        end

        class OpenURLAction < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RcsSuggestion::Action::OpenURLAction,
                Telnyx::Internal::AnyHash
              )
            end

          # URL open application, browser or webview.
          sig do
            returns(
              Telnyx::RcsSuggestion::Action::OpenURLAction::Application::OrSymbol
            )
          end
          attr_accessor :application

          sig { returns(String) }
          attr_accessor :url

          sig do
            returns(
              Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::OrSymbol
            )
          end
          attr_accessor :webview_view_mode

          # Accessbility description for webview.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Opens the user's default web browser app to the specified URL.
          sig do
            params(
              application:
                Telnyx::RcsSuggestion::Action::OpenURLAction::Application::OrSymbol,
              url: String,
              webview_view_mode:
                Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::OrSymbol,
              description: String
            ).returns(T.attached_class)
          end
          def self.new(
            # URL open application, browser or webview.
            application:,
            url:,
            webview_view_mode:,
            # Accessbility description for webview.
            description: nil
          )
          end

          sig do
            override.returns(
              {
                application:
                  Telnyx::RcsSuggestion::Action::OpenURLAction::Application::OrSymbol,
                url: String,
                webview_view_mode:
                  Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::OrSymbol,
                description: String
              }
            )
          end
          def to_hash
          end

          # URL open application, browser or webview.
          module Application
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::RcsSuggestion::Action::OpenURLAction::Application
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OPEN_URL_APPLICATION_UNSPECIFIED =
              T.let(
                :OPEN_URL_APPLICATION_UNSPECIFIED,
                Telnyx::RcsSuggestion::Action::OpenURLAction::Application::TaggedSymbol
              )
            BROWSER =
              T.let(
                :BROWSER,
                Telnyx::RcsSuggestion::Action::OpenURLAction::Application::TaggedSymbol
              )
            WEBVIEW =
              T.let(
                :WEBVIEW,
                Telnyx::RcsSuggestion::Action::OpenURLAction::Application::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::RcsSuggestion::Action::OpenURLAction::Application::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module WebviewViewMode
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WEBVIEW_VIEW_MODE_UNSPECIFIED =
              T.let(
                :WEBVIEW_VIEW_MODE_UNSPECIFIED,
                Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::TaggedSymbol
              )
            FULL =
              T.let(
                :FULL,
                Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::TaggedSymbol
              )
            HALF =
              T.let(
                :HALF,
                Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::TaggedSymbol
              )
            TALL =
              T.let(
                :TALL,
                Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::RcsSuggestion::Action::OpenURLAction::WebviewViewMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ViewLocationAction < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RcsSuggestion::Action::ViewLocationAction,
                Telnyx::Internal::AnyHash
              )
            end

          # The label of the pin dropped
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          sig do
            returns(
              T.nilable(
                Telnyx::RcsSuggestion::Action::ViewLocationAction::LatLong
              )
            )
          end
          attr_reader :lat_long

          sig do
            params(
              lat_long:
                Telnyx::RcsSuggestion::Action::ViewLocationAction::LatLong::OrHash
            ).void
          end
          attr_writer :lat_long

          # query string (Android only)
          sig { returns(T.nilable(String)) }
          attr_reader :query

          sig { params(query: String).void }
          attr_writer :query

          # Opens the user's default map app and selects the agent-specified location.
          sig do
            params(
              label: String,
              lat_long:
                Telnyx::RcsSuggestion::Action::ViewLocationAction::LatLong::OrHash,
              query: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The label of the pin dropped
            label: nil,
            lat_long: nil,
            # query string (Android only)
            query: nil
          )
          end

          sig do
            override.returns(
              {
                label: String,
                lat_long:
                  Telnyx::RcsSuggestion::Action::ViewLocationAction::LatLong,
                query: String
              }
            )
          end
          def to_hash
          end

          class LatLong < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::RcsSuggestion::Action::ViewLocationAction::LatLong,
                  Telnyx::Internal::AnyHash
                )
              end

            # The latitude in degrees. It must be in the range [-90.0, +90.0].
            sig { returns(Float) }
            attr_accessor :latitude

            # The longitude in degrees. It must be in the range [-180.0, +180.0].
            sig { returns(Float) }
            attr_accessor :longitude

            sig do
              params(latitude: Float, longitude: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # The latitude in degrees. It must be in the range [-90.0, +90.0].
              latitude:,
              # The longitude in degrees. It must be in the range [-180.0, +180.0].
              longitude:
            )
            end

            sig { override.returns({ latitude: Float, longitude: Float }) }
            def to_hash
            end
          end
        end
      end

      class Reply < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RcsSuggestion::Reply, Telnyx::Internal::AnyHash)
          end

        # Payload (base64 encoded) that will be sent to the agent in the user event that
        # results when the user taps the suggested action. Maximum 2048 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :postback_data

        sig { params(postback_data: String).void }
        attr_writer :postback_data

        # Text that is shown in the suggested reply (maximum 25 characters)
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig do
          params(postback_data: String, text: String).returns(T.attached_class)
        end
        def self.new(
          # Payload (base64 encoded) that will be sent to the agent in the user event that
          # results when the user taps the suggested action. Maximum 2048 characters.
          postback_data: nil,
          # Text that is shown in the suggested reply (maximum 25 characters)
          text: nil
        )
        end

        sig { override.returns({ postback_data: String, text: String }) }
        def to_hash
        end
      end
    end
  end
end
