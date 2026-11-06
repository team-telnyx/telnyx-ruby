# typed: strong

module Telnyx
  module Models
    module CalendarConnections
      class MeetingUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CalendarConnections::MeetingUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :meeting_id

        # True opts in, false opts out, null follows connection policy. A supported
        # meeting URL is still required.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :bot_will_join

        sig do
          params(
            id: String,
            meeting_id: String,
            bot_will_join: T.nilable(T::Boolean),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          meeting_id:,
          # True opts in, false opts out, null follows connection policy. A supported
          # meeting URL is still required.
          bot_will_join:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              meeting_id: String,
              bot_will_join: T.nilable(T::Boolean),
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
