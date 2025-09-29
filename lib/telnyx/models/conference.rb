# frozen_string_literal: true

module Telnyx
  module Models
    class Conference < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the conference
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   ISO 8601 formatted date of when the conference was created
      #
      #   @return [String]
      required :created_at, String

      # @!attribute expires_at
      #   ISO 8601 formatted date of when the conference will expire
      #
      #   @return [String]
      required :expires_at, String

      # @!attribute name
      #   Name of the conference
      #
      #   @return [String]
      required :name, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::Conference::RecordType]
      required :record_type, enum: -> { Telnyx::Conference::RecordType }

      # @!attribute connection_id
      #   Identifies the connection associated with the conference
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute end_reason
      #   Reason why the conference ended
      #
      #   @return [Symbol, Telnyx::Models::Conference::EndReason, nil]
      optional :end_reason, enum: -> { Telnyx::Conference::EndReason }

      # @!attribute ended_by
      #   IDs related to who ended the conference. It is expected for them to all be there
      #   or all be null
      #
      #   @return [Telnyx::Models::Conference::EndedBy, nil]
      optional :ended_by, -> { Telnyx::Conference::EndedBy }

      # @!attribute region
      #   Region where the conference is hosted
      #
      #   @return [String, nil]
      optional :region, String

      # @!attribute status
      #   Status of the conference
      #
      #   @return [Symbol, Telnyx::Models::Conference::Status, nil]
      optional :status, enum: -> { Telnyx::Conference::Status }

      # @!attribute updated_at
      #   ISO 8601 formatted date of when the conference was last updated
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(id:, created_at:, expires_at:, name:, record_type:, connection_id: nil, end_reason: nil, ended_by: nil, region: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::Conference} for more details.
      #
      #   @param id [String] Uniquely identifies the conference
      #
      #   @param created_at [String] ISO 8601 formatted date of when the conference was created
      #
      #   @param expires_at [String] ISO 8601 formatted date of when the conference will expire
      #
      #   @param name [String] Name of the conference
      #
      #   @param record_type [Symbol, Telnyx::Models::Conference::RecordType]
      #
      #   @param connection_id [String] Identifies the connection associated with the conference
      #
      #   @param end_reason [Symbol, Telnyx::Models::Conference::EndReason] Reason why the conference ended
      #
      #   @param ended_by [Telnyx::Models::Conference::EndedBy] IDs related to who ended the conference. It is expected for them to all be there
      #
      #   @param region [String] Region where the conference is hosted
      #
      #   @param status [Symbol, Telnyx::Models::Conference::Status] Status of the conference
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the conference was last updated

      # @see Telnyx::Models::Conference#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        CONFERENCE = :conference

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Reason why the conference ended
      #
      # @see Telnyx::Models::Conference#end_reason
      module EndReason
        extend Telnyx::Internal::Type::Enum

        ALL_LEFT = :all_left
        ENDED_VIA_API = :ended_via_api
        HOST_LEFT = :host_left
        TIME_EXCEEDED = :time_exceeded

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::Conference#ended_by
      class EndedBy < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Call Control ID which ended the conference
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_session_id
        #   Call Session ID which ended the conference
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!method initialize(call_control_id: nil, call_session_id: nil)
        #   IDs related to who ended the conference. It is expected for them to all be there
        #   or all be null
        #
        #   @param call_control_id [String] Call Control ID which ended the conference
        #
        #   @param call_session_id [String] Call Session ID which ended the conference
      end

      # Status of the conference
      #
      # @see Telnyx::Models::Conference#status
      module Status
        extend Telnyx::Internal::Type::Enum

        INIT = :init
        IN_PROGRESS = :in_progress
        COMPLETED = :completed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
