# typed: strong

module Telnyx
  module Resources
    class Portouts
      sig { returns(Telnyx::Resources::Portouts::Events) }
      attr_reader :events

      sig { returns(Telnyx::Resources::Portouts::Reports) }
      attr_reader :reports

      sig { returns(Telnyx::Resources::Portouts::Comments) }
      attr_reader :comments

      sig { returns(Telnyx::Resources::Portouts::SupportingDocuments) }
      attr_reader :supporting_documents

      # Returns the portout request based on the ID provided
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortoutRetrieveResponse)
      end
      def retrieve(
        # Portout id
        id,
        request_options: {}
      )
      end

      # Returns the portout requests according to filters
      sig do
        params(
          filter: Telnyx::PortoutListParams::Filter::OrHash,
          page: Telnyx::PortoutListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortoutListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[carrier_name], filter[country_code], filter[country_code_in],
        # filter[foc_date], filter[inserted_at], filter[phone_number], filter[pon],
        # filter[ported_out_at], filter[spid], filter[status], filter[status_in],
        # filter[support_key]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Given a port-out ID, list rejection codes that are eligible for that port-out
      sig do
        params(
          portout_id: String,
          filter: Telnyx::PortoutListRejectionCodesParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortoutListRejectionCodesResponse)
      end
      def list_rejection_codes(
        # Identifies a port out order.
        portout_id,
        # Consolidated filter parameter (deepObject style). Originally: filter[code],
        # filter[code][in]
        filter: nil,
        request_options: {}
      )
      end

      # Authorize or reject portout request
      sig do
        params(
          status: Telnyx::PortoutUpdateStatusParams::Status::OrSymbol,
          id: String,
          reason: String,
          host_messaging: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortoutUpdateStatusResponse)
      end
      def update_status(
        # Path param: Updated portout status
        status,
        # Path param: Portout id
        id:,
        # Body param: Provide a reason if rejecting the port out request
        reason:,
        # Body param: Indicates whether messaging services should be maintained with
        # Telnyx after the port out completes
        host_messaging: nil,
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
