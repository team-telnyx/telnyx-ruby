# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#delete_recording_media
    class MeetingSessionDeleteRecordingMediaResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data]
      required :data, -> { Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data]

      # @see Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute deletion_status
        #
        #   @return [Symbol, Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus]
        required :deletion_status,
                 enum: -> { Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus }

        # @!attribute meeting_session_id
        #   The account-scoped Meeting Session identifier.
        #
        #   @return [String]
        required :meeting_session_id, String

        # @!attribute provider
        #
        #   @return [Symbol, :recall]
        required :provider, const: :recall

        # @!attribute scope
        #
        #   @return [Symbol, :provider_recording_media]
        required :scope, const: :provider_recording_media

        # @!method initialize(deletion_status:, meeting_session_id:, provider: :recall, scope: :provider_recording_media)
        #   @param deletion_status [Symbol, Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus]
        #
        #   @param meeting_session_id [String] The account-scoped Meeting Session identifier.
        #
        #   @param provider [Symbol, :recall]
        #
        #   @param scope [Symbol, :provider_recording_media]

        # @see Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data#deletion_status
        module DeletionStatus
          extend Telnyx::Internal::Type::Enum

          REQUESTED = :requested
          ALREADY_IN_PROGRESS = :already_in_progress

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
