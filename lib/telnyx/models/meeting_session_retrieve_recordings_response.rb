# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#retrieve_recordings
    class MeetingSessionRetrieveRecordingsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute expires_at
        #   Expiry timestamp when supplied by the provider, or null. The current adapter
        #   returns null.
        #
        #   @return [String, nil]
        required :expires_at, String, nil?: true

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute url
        #   Current provider download URL. The API does not guarantee URL lifetime or
        #   refresh behavior.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(expires_at:, type:, url:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data} for more
        #   details.
        #
        #   @param expires_at [String, nil] Expiry timestamp when supplied by the provider, or null. The current adapter ret
        #
        #   @param type [String]
        #
        #   @param url [String] Current provider download URL. The API does not guarantee URL lifetime or refres
      end
    end
  end
end
