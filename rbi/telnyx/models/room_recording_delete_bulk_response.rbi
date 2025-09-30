# typed: strong

module Telnyx
  module Models
    class RoomRecordingDeleteBulkResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RoomRecordingDeleteBulkResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::RoomRecordingDeleteBulkResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::RoomRecordingDeleteBulkResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::RoomRecordingDeleteBulkResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::RoomRecordingDeleteBulkResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::RoomRecordingDeleteBulkResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Amount of room recordings affected
        sig { returns(T.nilable(Integer)) }
        attr_reader :room_recordings

        sig { params(room_recordings: Integer).void }
        attr_writer :room_recordings

        sig { params(room_recordings: Integer).returns(T.attached_class) }
        def self.new(
          # Amount of room recordings affected
          room_recordings: nil
        )
        end

        sig { override.returns({ room_recordings: Integer }) }
        def to_hash
        end
      end
    end
  end
end
