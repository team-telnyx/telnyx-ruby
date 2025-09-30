# typed: strong

module Telnyx
  module Resources
    class Reports
      sig { returns(Telnyx::Resources::Reports::CdrUsageReports) }
      attr_reader :cdr_usage_reports

      sig { returns(Telnyx::Resources::Reports::MdrUsageReports) }
      attr_reader :mdr_usage_reports

      # Fetch all Mdr records
      sig do
        params(
          id: String,
          cld: String,
          cli: String,
          direction: Telnyx::ReportListMdrsParams::Direction::OrSymbol,
          end_date: String,
          message_type: Telnyx::ReportListMdrsParams::MessageType::OrSymbol,
          profile: String,
          start_date: String,
          status: Telnyx::ReportListMdrsParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ReportListMdrsResponse)
      end
      def list_mdrs(
        # Message uuid
        id: nil,
        # Destination number
        cld: nil,
        # Origination number
        cli: nil,
        # Direction (inbound or outbound)
        direction: nil,
        # Pagination end date
        end_date: nil,
        # Type of message
        message_type: nil,
        # Name of the profile
        profile: nil,
        # Pagination start date
        start_date: nil,
        # Message status
        status: nil,
        request_options: {}
      )
      end

      # Fetch all Wdr records
      sig do
        params(
          id: String,
          end_date: String,
          imsi: String,
          mcc: String,
          mnc: String,
          page: Telnyx::ReportListWdrsParams::Page::OrHash,
          phone_number: String,
          sim_card_id: String,
          sim_group_id: String,
          sim_group_name: String,
          sort: T::Array[String],
          start_date: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ReportListWdrsResponse)
      end
      def list_wdrs(
        # WDR uuid
        id: nil,
        # End date
        end_date: nil,
        # International mobile subscriber identity
        imsi: nil,
        # Mobile country code
        mcc: nil,
        # Mobile network code
        mnc: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Phone number
        phone_number: nil,
        # Sim card unique identifier
        sim_card_id: nil,
        # Sim group unique identifier
        sim_group_id: nil,
        # Sim group name
        sim_group_name: nil,
        # Field used to order the data. If no field is specified, default value is
        # 'created_at'
        sort: nil,
        # Start date
        start_date: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
