# typed: strong

module Telnyx
  module Models
    module MeetingSessions
      class ActionSendChatParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessions::ActionSendChatParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Message text, 1–4000 characters. On Google Meet and Teams, also at most 4096
        # UTF-8 bytes and nonblank; control characters other than tab and line breaks are
        # rejected. CRLF is normalized to LF.
        sig { returns(String) }
        attr_accessor :text

        sig do
          params(
            id: String,
            text: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Message text, 1–4000 characters. On Google Meet and Teams, also at most 4096
          # UTF-8 bytes and nonblank; control characters other than tab and line breaks are
          # rejected. CRLF is normalized to LF.
          text:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              text: String,
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
