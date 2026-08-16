# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#list
    class MeetingSessionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute status
      #   Filter meeting sessions by current status.
      #
      #   @return [Symbol, Telnyx::Models::MeetingSessionListParams::Status, nil]
      optional :status, enum: -> { Telnyx::MeetingSessionListParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Telnyx::Models::MeetingSessionListParams::Status] Filter meeting sessions by current status.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter meeting sessions by current status.
      module Status
        extend Telnyx::Internal::Type::Enum

        SCHEDULED = :scheduled
        JOINING = :joining
        WAITING_FOR_ADMISSION = :waiting_for_admission
        ACTIVE = :active
        LEAVING = :leaving
        ENDED = :ended
        FAILED = :failed
        ADMISSION_DENIED = :admission_denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
