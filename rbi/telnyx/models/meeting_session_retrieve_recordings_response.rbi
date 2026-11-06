# typed: strong

module Telnyx
  module Models
    class MeetingSessionRetrieveRecordingsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MeetingSessionRetrieveRecordingsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Temporary download URLs for recordings held by the Meeting service, including
      # Zoom and existing Google Meet and Teams recordings. Empty for customer Storage
      # exports; use recording_export instead. Choose the download method from these
      # fields rather than the platform alone.
      sig do
        returns(
          T::Array[
            Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data
          ]
        )
      end
      attr_accessor :data

      # Customer Storage recording reference. Pending is not downloadable; exported
      # means upload was verified; failed is terminal. Download with ordinary Storage
      # authorization. No presigned URL is returned.
      sig { returns(T.nilable(Telnyx::MeetingSessionRecordingExport)) }
      attr_reader :recording_export

      sig do
        params(
          recording_export:
            T.nilable(Telnyx::MeetingSessionRecordingExport::OrHash)
        ).void
      end
      attr_writer :recording_export

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data::OrHash
            ],
          recording_export:
            T.nilable(Telnyx::MeetingSessionRecordingExport::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Temporary download URLs for recordings held by the Meeting service, including
        # Zoom and existing Google Meet and Teams recordings. Empty for customer Storage
        # exports; use recording_export instead. Choose the download method from these
        # fields rather than the platform alone.
        data:,
        # Customer Storage recording reference. Pending is not downloadable; exported
        # means upload was verified; failed is terminal. Download with ordinary Storage
        # authorization. No presigned URL is returned.
        recording_export: nil
      )
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data
              ],
            recording_export: T.nilable(Telnyx::MeetingSessionRecordingExport)
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        sig { returns(String) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :url

        sig do
          params(
            expires_at: T.nilable(Time),
            type: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(expires_at:, type:, url:)
        end

        sig do
          override.returns(
            { expires_at: T.nilable(Time), type: String, url: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
