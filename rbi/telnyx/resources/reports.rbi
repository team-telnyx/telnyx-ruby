# typed: strong

module Telnyx
  module Resources
    class Reports
      # Voice usage reports
      sig { returns(Telnyx::Resources::Reports::CdrUsageReports) }
      attr_reader :cdr_usage_reports

      # Messaging usage reports
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
        # Filter results by identifier.
        id: nil,
        # Filter results by cld.
        cld: nil,
        # Filter results by cli.
        cli: nil,
        # Filter results by direction.
        direction: nil,
        # Pagination end date
        end_date: nil,
        # Filter results by message type.
        message_type: nil,
        # Filter results by profile.
        profile: nil,
        # Pagination start date
        start_date: nil,
        # Filter results by status.
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
          page_number: Integer,
          page_size: Integer,
          phone_number: String,
          sim_card_id: String,
          sim_group_id: String,
          sim_group_name: String,
          sort: T::Array[String],
          start_date: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::ReportListWdrsResponse
          ]
        )
      end
      def list_wdrs(
        # Filter results by identifier.
        id: nil,
        # End date
        end_date: nil,
        # Filter results by imsi.
        imsi: nil,
        # Filter results by mcc.
        mcc: nil,
        # Filter results by mnc.
        mnc: nil,
        page_number: nil,
        page_size: nil,
        # Filter results by phone number.
        phone_number: nil,
        # Filter results by sim card id.
        sim_card_id: nil,
        # Filter results by sim group id.
        sim_group_id: nil,
        # Filter results by sim group name.
        sim_group_name: nil,
        # Field and direction to sort the results by.
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
