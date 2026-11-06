# typed: strong

module Telnyx
  module Models
    module MeetingBot
      class CalendarRetrieveOAuthCallbackParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingBot::CalendarRetrieveOAuthCallbackParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Authorization code supplied by the calendar provider.
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # Authorization error supplied by the calendar provider, such as access_denied.
        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        # Unmodified signed state from the authorization URL.
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        sig do
          params(
            code: String,
            error: String,
            state: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Authorization code supplied by the calendar provider.
          code: nil,
          # Authorization error supplied by the calendar provider, such as access_denied.
          error: nil,
          # Unmodified signed state from the authorization URL.
          state: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              code: String,
              error: String,
              state: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
