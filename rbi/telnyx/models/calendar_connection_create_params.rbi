# typed: strong

module Telnyx
  module Models
    class CalendarConnectionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CalendarConnectionCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Calendar provider: Google Calendar or Microsoft Outlook.
      sig do
        returns(Telnyx::CalendarConnectionCreateParams::Platform::OrSymbol)
      end
      attr_accessor :platform

      sig do
        params(
          platform: Telnyx::CalendarConnectionCreateParams::Platform::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Calendar provider: Google Calendar or Microsoft Outlook.
        platform:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            platform:
              Telnyx::CalendarConnectionCreateParams::Platform::OrSymbol,
            request_options: Telnyx::RequestOptions
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
            T.all(Symbol, Telnyx::CalendarConnectionCreateParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GOOGLE_CALENDAR =
          T.let(
            :google_calendar,
            Telnyx::CalendarConnectionCreateParams::Platform::TaggedSymbol
          )
        MICROSOFT_OUTLOOK =
          T.let(
            :microsoft_outlook,
            Telnyx::CalendarConnectionCreateParams::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CalendarConnectionCreateParams::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
