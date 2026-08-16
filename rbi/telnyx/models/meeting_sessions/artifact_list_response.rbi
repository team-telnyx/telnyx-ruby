# typed: strong

module Telnyx
  module Models
    module MeetingSessions
      class ArtifactListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MeetingSessions::ArtifactListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[Telnyx::MeetingSessions::MeetingSessionArtifact])
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[Telnyx::MeetingSessions::MeetingSessionArtifact::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::MeetingSessions::MeetingSessionArtifact] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
