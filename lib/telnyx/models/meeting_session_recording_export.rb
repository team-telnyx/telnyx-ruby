# frozen_string_literal: true

module Telnyx
  module Models
    class MeetingSessionRecordingExport < Telnyx::Internal::Type::BaseModel
      # @!attribute bucket
      #
      #   @return [String]
      required :bucket, String

      # @!attribute bytes
      #
      #   @return [Integer, nil]
      required :bytes, Integer, nil?: true

      # @!attribute exported_at
      #
      #   @return [Time, nil]
      required :exported_at, Time, nil?: true

      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!attribute region
      #
      #   @return [String]
      required :region, String

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::MeetingSessionRecordingExport::Status]
      required :status, enum: -> { Telnyx::MeetingSessionRecordingExport::Status }

      # @!attribute type
      #
      #   @return [Symbol, :video]
      required :type, const: :video

      # @!method initialize(bucket:, bytes:, exported_at:, key:, region:, status:, type: :video)
      #   Customer Storage recording reference. Pending is not downloadable; exported
      #   means upload was verified; failed is terminal. Download with ordinary Storage
      #   authorization. No presigned URL is returned.
      #
      #   @param bucket [String]
      #   @param bytes [Integer, nil]
      #   @param exported_at [Time, nil]
      #   @param key [String]
      #   @param region [String]
      #   @param status [Symbol, Telnyx::Models::MeetingSessionRecordingExport::Status]
      #   @param type [Symbol, :video]

      # @see Telnyx::Models::MeetingSessionRecordingExport#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        EXPORTED = :exported
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
