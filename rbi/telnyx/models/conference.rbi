# typed: strong

module Telnyx
  module Models
    class Conference < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Conference, Telnyx::Internal::AnyHash) }

      # Uniquely identifies the conference
      sig { returns(String) }
      attr_accessor :id

      # ISO 8601 formatted date of when the conference was created
      sig { returns(String) }
      attr_accessor :created_at

      # ISO 8601 formatted date of when the conference will expire
      sig { returns(String) }
      attr_accessor :expires_at

      # Name of the conference
      sig { returns(String) }
      attr_accessor :name

      sig { returns(Telnyx::Conference::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      # Identifies the connection associated with the conference
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # Reason why the conference ended
      sig { returns(T.nilable(Telnyx::Conference::EndReason::TaggedSymbol)) }
      attr_reader :end_reason

      sig { params(end_reason: Telnyx::Conference::EndReason::OrSymbol).void }
      attr_writer :end_reason

      # IDs related to who ended the conference. It is expected for them to all be there
      # or all be null
      sig { returns(T.nilable(Telnyx::Conference::EndedBy)) }
      attr_reader :ended_by

      sig { params(ended_by: Telnyx::Conference::EndedBy::OrHash).void }
      attr_writer :ended_by

      # Region where the conference is hosted
      sig { returns(T.nilable(String)) }
      attr_reader :region

      sig { params(region: String).void }
      attr_writer :region

      # Status of the conference
      sig { returns(T.nilable(Telnyx::Conference::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::Conference::Status::OrSymbol).void }
      attr_writer :status

      # ISO 8601 formatted date of when the conference was last updated
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: String,
          expires_at: String,
          name: String,
          record_type: Telnyx::Conference::RecordType::OrSymbol,
          connection_id: String,
          end_reason: Telnyx::Conference::EndReason::OrSymbol,
          ended_by: Telnyx::Conference::EndedBy::OrHash,
          region: String,
          status: Telnyx::Conference::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the conference
        id:,
        # ISO 8601 formatted date of when the conference was created
        created_at:,
        # ISO 8601 formatted date of when the conference will expire
        expires_at:,
        # Name of the conference
        name:,
        record_type:,
        # Identifies the connection associated with the conference
        connection_id: nil,
        # Reason why the conference ended
        end_reason: nil,
        # IDs related to who ended the conference. It is expected for them to all be there
        # or all be null
        ended_by: nil,
        # Region where the conference is hosted
        region: nil,
        # Status of the conference
        status: nil,
        # ISO 8601 formatted date of when the conference was last updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            expires_at: String,
            name: String,
            record_type: Telnyx::Conference::RecordType::TaggedSymbol,
            connection_id: String,
            end_reason: Telnyx::Conference::EndReason::TaggedSymbol,
            ended_by: Telnyx::Conference::EndedBy,
            region: String,
            status: Telnyx::Conference::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Conference::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONFERENCE =
          T.let(:conference, Telnyx::Conference::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Conference::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Reason why the conference ended
      module EndReason
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Conference::EndReason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL_LEFT = T.let(:all_left, Telnyx::Conference::EndReason::TaggedSymbol)
        ENDED_VIA_API =
          T.let(:ended_via_api, Telnyx::Conference::EndReason::TaggedSymbol)
        HOST_LEFT =
          T.let(:host_left, Telnyx::Conference::EndReason::TaggedSymbol)
        TIME_EXCEEDED =
          T.let(:time_exceeded, Telnyx::Conference::EndReason::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Conference::EndReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class EndedBy < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Conference::EndedBy, Telnyx::Internal::AnyHash)
          end

        # Call Control ID which ended the conference
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        # Call Session ID which ended the conference
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # IDs related to who ended the conference. It is expected for them to all be there
        # or all be null
        sig do
          params(call_control_id: String, call_session_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Call Control ID which ended the conference
          call_control_id: nil,
          # Call Session ID which ended the conference
          call_session_id: nil
        )
        end

        sig do
          override.returns({ call_control_id: String, call_session_id: String })
        end
        def to_hash
        end
      end

      # Status of the conference
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Conference::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INIT = T.let(:init, Telnyx::Conference::Status::TaggedSymbol)
        IN_PROGRESS =
          T.let(:in_progress, Telnyx::Conference::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, Telnyx::Conference::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::Conference::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
