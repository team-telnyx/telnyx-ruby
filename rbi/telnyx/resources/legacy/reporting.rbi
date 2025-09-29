# typed: strong

module Telnyx
  module Resources
    class Legacy
      class Reporting
        sig do
          returns(Telnyx::Resources::Legacy::Reporting::BatchDetailRecords)
        end
        attr_reader :batch_detail_records

        sig { returns(Telnyx::Resources::Legacy::Reporting::UsageReports) }
        attr_reader :usage_reports

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
