# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Reports#list_mdrs
    class ReportListMdrsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #   Filter results by identifier.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute cld
      #   Filter results by cld.
      #
      #   @return [String, nil]
      optional :cld, String

      # @!attribute cli
      #   Filter results by cli.
      #
      #   @return [String, nil]
      optional :cli, String

      # @!attribute direction
      #   Filter results by direction.
      #
      #   @return [Symbol, Telnyx::Models::ReportListMdrsParams::Direction, nil]
      optional :direction, enum: -> { Telnyx::ReportListMdrsParams::Direction }

      # @!attribute end_date
      #   Pagination end date
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute message_type
      #   Filter results by message type.
      #
      #   @return [Symbol, Telnyx::Models::ReportListMdrsParams::MessageType, nil]
      optional :message_type, enum: -> { Telnyx::ReportListMdrsParams::MessageType }

      # @!attribute profile
      #   Filter results by profile.
      #
      #   @return [String, nil]
      optional :profile, String

      # @!attribute start_date
      #   Pagination start date
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!attribute status
      #   Filter results by status.
      #
      #   @return [Symbol, Telnyx::Models::ReportListMdrsParams::Status, nil]
      optional :status, enum: -> { Telnyx::ReportListMdrsParams::Status }

      # @!method initialize(id: nil, cld: nil, cli: nil, direction: nil, end_date: nil, message_type: nil, profile: nil, start_date: nil, status: nil, request_options: {})
      #   @param id [String] Filter results by identifier.
      #
      #   @param cld [String] Filter results by cld.
      #
      #   @param cli [String] Filter results by cli.
      #
      #   @param direction [Symbol, Telnyx::Models::ReportListMdrsParams::Direction] Filter results by direction.
      #
      #   @param end_date [String] Pagination end date
      #
      #   @param message_type [Symbol, Telnyx::Models::ReportListMdrsParams::MessageType] Filter results by message type.
      #
      #   @param profile [String] Filter results by profile.
      #
      #   @param start_date [String] Pagination start date
      #
      #   @param status [Symbol, Telnyx::Models::ReportListMdrsParams::Status] Filter results by status.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter results by direction.
      module Direction
        extend Telnyx::Internal::Type::Enum

        INBOUND = :INBOUND
        OUTBOUND = :OUTBOUND

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter results by message type.
      module MessageType
        extend Telnyx::Internal::Type::Enum

        SMS = :SMS
        MMS = :MMS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter results by status.
      module Status
        extend Telnyx::Internal::Type::Enum

        GW_TIMEOUT = :GW_TIMEOUT
        DELIVERED = :DELIVERED
        DLR_UNCONFIRMED = :DLR_UNCONFIRMED
        DLR_TIMEOUT = :DLR_TIMEOUT
        RECEIVED = :RECEIVED
        GW_REJECT = :GW_REJECT
        FAILED = :FAILED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
