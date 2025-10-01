# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          # @see Telnyx::Resources::Legacy::Reporting::BatchDetailRecords::Voice#list
          class VoiceListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse] }

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta, nil]
            optional :meta, -> { Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta }

            # @!method initialize(data: nil, meta: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse>]
            #   @param meta [Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta]

            # @see Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse#meta
            class Meta < Telnyx::Internal::Type::BaseModel
              # @!attribute page_number
              #
              #   @return [Integer, nil]
              optional :page_number, Integer

              # @!attribute page_size
              #
              #   @return [Integer, nil]
              optional :page_size, Integer

              # @!attribute total_pages
              #
              #   @return [Integer, nil]
              optional :total_pages, Integer

              # @!attribute total_results
              #
              #   @return [Integer, nil]
              optional :total_results, Integer

              # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
              #   @param page_number [Integer]
              #   @param page_size [Integer]
              #   @param total_pages [Integer]
              #   @param total_results [Integer]
            end
          end
        end
      end
    end
  end
end
