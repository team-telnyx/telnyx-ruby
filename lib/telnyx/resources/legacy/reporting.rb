# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      class Reporting
        # @return [Telnyx::Resources::Legacy::Reporting::BatchDetailRecords]
        attr_reader :batch_detail_records

        # @return [Telnyx::Resources::Legacy::Reporting::UsageReports]
        attr_reader :usage_reports

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @batch_detail_records = Telnyx::Resources::Legacy::Reporting::BatchDetailRecords.new(client: client)
          @usage_reports = Telnyx::Resources::Legacy::Reporting::UsageReports.new(client: client)
        end
      end
    end
  end
end
