# typed: strong

module Telnyx
  module Models
    MeetingSessionArtifactResponse =
      MeetingSessions::MeetingSessionArtifactResponse

    module MeetingSessions
      class MeetingSessionArtifactResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessions::MeetingSessionArtifactResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::MeetingSessions::MeetingSessionArtifact) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::MeetingSessions::MeetingSessionArtifact::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::MeetingSessions::MeetingSessionArtifact::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::MeetingSessions::MeetingSessionArtifact }
          )
        end
        def to_hash
        end
      end
    end
  end
end
