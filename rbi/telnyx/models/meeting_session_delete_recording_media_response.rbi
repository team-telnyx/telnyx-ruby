# typed: strong

module Telnyx
  module Models
    class MeetingSessionDeleteRecordingMediaResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus::TaggedSymbol
          )
        end
        attr_accessor :deletion_status

        # The account-scoped Meeting Session identifier.
        sig { returns(String) }
        attr_accessor :meeting_session_id

        sig { returns(Symbol) }
        attr_accessor :provider

        sig { returns(Symbol) }
        attr_accessor :scope

        sig do
          params(
            deletion_status:
              Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus::OrSymbol,
            meeting_session_id: String,
            provider: Symbol,
            scope: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          deletion_status:,
          # The account-scoped Meeting Session identifier.
          meeting_session_id:,
          provider: :recall,
          scope: :provider_recording_media
        )
        end

        sig do
          override.returns(
            {
              deletion_status:
                Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus::TaggedSymbol,
              meeting_session_id: String,
              provider: Symbol,
              scope: Symbol
            }
          )
        end
        def to_hash
        end

        module DeletionStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REQUESTED =
            T.let(
              :requested,
              Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus::TaggedSymbol
            )
          ALREADY_IN_PROGRESS =
            T.let(
              :already_in_progress,
              Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::MeetingSessionDeleteRecordingMediaResponse::Data::DeletionStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
