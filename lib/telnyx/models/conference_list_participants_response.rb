# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#list_participants
    class ConferenceListParticipantsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ConferenceListParticipantsResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ConferenceListParticipantsResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::ConferenceListParticipantsResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the participant
        #
        #   @return [String]
        required :id, String

        # @!attribute call_control_id
        #   Call Control ID associated with the partiipant of the conference
        #
        #   @return [String]
        required :call_control_id, String

        # @!attribute call_leg_id
        #   Uniquely identifies the call leg associated with the participant
        #
        #   @return [String]
        required :call_leg_id, String

        # @!attribute conference
        #   Info about the conference that the participant is in
        #
        #   @return [Telnyx::Models::ConferenceListParticipantsResponse::Data::Conference]
        required :conference, -> { Telnyx::Models::ConferenceListParticipantsResponse::Data::Conference }

        # @!attribute created_at
        #   ISO 8601 formatted date of when the participant was created
        #
        #   @return [String]
        required :created_at, String

        # @!attribute end_conference_on_exit
        #   Whether the conference will end and all remaining participants be hung up after
        #   the participant leaves the conference.
        #
        #   @return [Boolean]
        required :end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute muted
        #   Whether the participant is muted.
        #
        #   @return [Boolean]
        required :muted, Telnyx::Internal::Type::Boolean

        # @!attribute on_hold
        #   Whether the participant is put on_hold.
        #
        #   @return [Boolean]
        required :on_hold, Telnyx::Internal::Type::Boolean

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::ConferenceListParticipantsResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::ConferenceListParticipantsResponse::Data::RecordType }

        # @!attribute soft_end_conference_on_exit
        #   Whether the conference will end after the participant leaves the conference.
        #
        #   @return [Boolean]
        required :soft_end_conference_on_exit, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   The status of the participant with respect to the lifecycle within the
        #   conference
        #
        #   @return [Symbol, Telnyx::Models::ConferenceListParticipantsResponse::Data::Status]
        required :status, enum: -> { Telnyx::Models::ConferenceListParticipantsResponse::Data::Status }

        # @!attribute updated_at
        #   ISO 8601 formatted date of when the participant was last updated
        #
        #   @return [String]
        required :updated_at, String

        # @!attribute whisper_call_control_ids
        #   Array of unique call_control_ids the participant can whisper to..
        #
        #   @return [Array<String>]
        required :whisper_call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, call_control_id:, call_leg_id:, conference:, created_at:, end_conference_on_exit:, muted:, on_hold:, record_type:, soft_end_conference_on_exit:, status:, updated_at:, whisper_call_control_ids:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ConferenceListParticipantsResponse::Data} for more details.
        #
        #   @param id [String] Uniquely identifies the participant
        #
        #   @param call_control_id [String] Call Control ID associated with the partiipant of the conference
        #
        #   @param call_leg_id [String] Uniquely identifies the call leg associated with the participant
        #
        #   @param conference [Telnyx::Models::ConferenceListParticipantsResponse::Data::Conference] Info about the conference that the participant is in
        #
        #   @param created_at [String] ISO 8601 formatted date of when the participant was created
        #
        #   @param end_conference_on_exit [Boolean] Whether the conference will end and all remaining participants be hung up after
        #
        #   @param muted [Boolean] Whether the participant is muted.
        #
        #   @param on_hold [Boolean] Whether the participant is put on_hold.
        #
        #   @param record_type [Symbol, Telnyx::Models::ConferenceListParticipantsResponse::Data::RecordType]
        #
        #   @param soft_end_conference_on_exit [Boolean] Whether the conference will end after the participant leaves the conference.
        #
        #   @param status [Symbol, Telnyx::Models::ConferenceListParticipantsResponse::Data::Status] The status of the participant with respect to the lifecycle within the conferenc
        #
        #   @param updated_at [String] ISO 8601 formatted date of when the participant was last updated
        #
        #   @param whisper_call_control_ids [Array<String>] Array of unique call_control_ids the participant can whisper to..

        # @see Telnyx::Models::ConferenceListParticipantsResponse::Data#conference
        class Conference < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies the conference
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute name
          #   Name of the conference
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, name: nil)
          #   Info about the conference that the participant is in
          #
          #   @param id [String] Uniquely identifies the conference
          #
          #   @param name [String] Name of the conference
        end

        # @see Telnyx::Models::ConferenceListParticipantsResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          PARTICIPANT = :participant

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The status of the participant with respect to the lifecycle within the
        # conference
        #
        # @see Telnyx::Models::ConferenceListParticipantsResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          JOINING = :joining
          JOINED = :joined
          LEFT = :left

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
