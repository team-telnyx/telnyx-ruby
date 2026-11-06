# typed: strong

module Telnyx
  module Models
    class CalendarConnectionCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CalendarConnectionCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::CalendarConnectionCreateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::CalendarConnectionCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::CalendarConnectionCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::CalendarConnectionCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CalendarConnectionCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Open in a browser to authorize calendar access.
        sig { returns(String) }
        attr_accessor :oauth_url

        # Calendar provider: Google Calendar or Microsoft Outlook.
        sig do
          returns(
            Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform::TaggedSymbol
          )
        end
        attr_accessor :platform

        # Authorization has not completed.
        sig { returns(Symbol) }
        attr_accessor :status

        sig do
          params(
            oauth_url: String,
            platform:
              Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform::OrSymbol,
            status: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Open in a browser to authorize calendar access.
          oauth_url:,
          # Calendar provider: Google Calendar or Microsoft Outlook.
          platform:,
          # Authorization has not completed.
          status: :pending_oauth
        )
        end

        sig do
          override.returns(
            {
              oauth_url: String,
              platform:
                Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform::TaggedSymbol,
              status: Symbol
            }
          )
        end
        def to_hash
        end

        # Calendar provider: Google Calendar or Microsoft Outlook.
        module Platform
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GOOGLE_CALENDAR =
            T.let(
              :google_calendar,
              Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform::TaggedSymbol
            )
          MICROSOFT_OUTLOOK =
            T.let(
              :microsoft_outlook,
              Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CalendarConnectionCreateResponse::Data::Platform::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
