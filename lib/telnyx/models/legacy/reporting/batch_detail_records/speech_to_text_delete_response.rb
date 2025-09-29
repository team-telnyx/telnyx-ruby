# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::SpeechToText#delete
          class SpeechToTextDeleteResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data, nil]
            optional :data,
                     -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data]

            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Identifies the resource
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute created_at
              #
              #   @return [Time, nil]
              optional :created_at, Time

              # @!attribute download_link
              #   URL to download the report
              #
              #   @return [String, nil]
              optional :download_link, String

              # @!attribute end_date
              #
              #   @return [Time, nil]
              optional :end_date, Time

              # @!attribute record_type
              #
              #   @return [String, nil]
              optional :record_type, String

              # @!attribute start_date
              #
              #   @return [Time, nil]
              optional :start_date, Time

              # @!attribute status
              #
              #   @return [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status, nil]
              optional :status,
                       enum: -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status }

              # @!method initialize(id: nil, created_at: nil, download_link: nil, end_date: nil, record_type: nil, start_date: nil, status: nil)
              #   @param id [String] Identifies the resource
              #
              #   @param created_at [Time]
              #
              #   @param download_link [String] URL to download the report
              #
              #   @param end_date [Time]
              #
              #   @param record_type [String]
              #
              #   @param start_date [Time]
              #
              #   @param status [Symbol, Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status]

              # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data#status
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
end
