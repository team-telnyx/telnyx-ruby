# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class MdrDetailReportResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Identifies the resource
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute connections
            #
            #   @return [Array<Integer>, nil]
            optional :connections, Telnyx::Internal::Type::ArrayOf[Integer]

            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute directions
            #
            #   @return [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction>, nil]
            optional :directions,
                     -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction] }

            # @!attribute end_date
            #
            #   @return [Time, nil]
            optional :end_date, Time

            # @!attribute filters
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::Filter>, nil]
            optional :filters, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::Filter] }

            # @!attribute profiles
            #   List of messaging profile IDs
            #
            #   @return [Array<String>, nil]
            optional :profiles, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute record_types
            #
            #   @return [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType>, nil]
            optional :record_types,
                     -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType] }

            # @!attribute report_name
            #
            #   @return [String, nil]
            optional :report_name, String

            # @!attribute report_url
            #
            #   @return [String, nil]
            optional :report_url, String

            # @!attribute start_date
            #
            #   @return [Time, nil]
            optional :start_date, Time

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status }

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(id: nil, connections: nil, created_at: nil, directions: nil, end_date: nil, filters: nil, profiles: nil, record_type: nil, record_types: nil, report_name: nil, report_url: nil, start_date: nil, status: nil, updated_at: nil)
            #   @param id [String] Identifies the resource
            #
            #   @param connections [Array<Integer>]
            #
            #   @param created_at [Time]
            #
            #   @param directions [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction>]
            #
            #   @param end_date [Time]
            #
            #   @param filters [Array<Telnyx::Models::Legacy::Reporting::Filter>]
            #
            #   @param profiles [Array<String>] List of messaging profile IDs
            #
            #   @param record_type [String]
            #
            #   @param record_types [Array<Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType>]
            #
            #   @param report_name [String]
            #
            #   @param report_url [String]
            #
            #   @param start_date [Time]
            #
            #   @param status [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status]
            #
            #   @param updated_at [Time]

            module Direction
              extend Telnyx::Internal::Type::Enum

              INBOUND = :INBOUND
              OUTBOUND = :OUTBOUND

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module RecordType
              extend Telnyx::Internal::Type::Enum

              INCOMPLETE = :INCOMPLETE
              COMPLETED = :COMPLETED
              ERRORS = :ERRORS

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse#status
            module Status
              extend Telnyx::Internal::Type::Enum

              PENDING = :PENDING
              COMPLETE = :COMPLETE
              FAILED = :FAILED
              EXPIRED = :EXPIRED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
