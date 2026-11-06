# typed: strong

module Telnyx
  module Models
    module CalendarConnections
      class MeetingUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CalendarConnections::MeetingUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::CalendarConnections::CalendarMeeting) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::CalendarConnections::CalendarMeeting::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::CalendarConnections::CalendarMeeting::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::CalendarConnections::CalendarMeeting }
          )
        end
        def to_hash
        end
      end
    end
  end
end
