# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#retrieve_recordings
    class MeetingSessionRetrieveRecordingsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Temporary download URLs for recordings held by the Meeting service, including
      #   Zoom and existing Google Meet and Teams recordings. Empty for customer Storage
      #   exports; use recording_export instead. Choose the download method from these
      #   fields rather than the platform alone.
      #
      #   @return [Array<Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data] }

      # @!attribute recording_export
      #   Customer Storage recording reference. Pending is not downloadable; exported
      #   means upload was verified; failed is terminal. Download with ordinary Storage
      #   authorization. No presigned URL is returned.
      #
      #   @return [Telnyx::Models::MeetingSessionRecordingExport, nil]
      optional :recording_export, -> { Telnyx::MeetingSessionRecordingExport }, nil?: true

      # @!method initialize(data:, recording_export: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionRetrieveRecordingsResponse} for more details.
      #
      #   @param data [Array<Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data>] Temporary download URLs for recordings held by the Meeting service, including Zo
      #
      #   @param recording_export [Telnyx::Models::MeetingSessionRecordingExport, nil] Customer Storage recording reference. Pending is not downloadable; exported mean

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute expires_at
        #
        #   @return [Time, nil]
        required :expires_at, Time, nil?: true

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!method initialize(expires_at:, type:, url:)
        #   @param expires_at [Time, nil]
        #   @param type [String]
        #   @param url [String]
      end
    end
  end
end
