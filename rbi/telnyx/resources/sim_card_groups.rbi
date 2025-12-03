# typed: strong

module Telnyx
  module Resources
    class SimCardGroups
      sig { returns(Telnyx::Resources::SimCardGroups::Actions) }
      attr_reader :actions

      # Creates a new SIM card group object
      sig do
        params(
          name: String,
          data_limit: Telnyx::SimCardGroupCreateParams::DataLimit::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGroupCreateResponse)
      end
      def create(
        # A user friendly name for the SIM card group.
        name:,
        # Upper limit on the amount of data the SIM cards, within the group, can use.
        data_limit: nil,
        request_options: {}
      )
      end

      # Returns the details regarding a specific SIM card group
      sig do
        params(
          id: String,
          include_iccids: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGroupRetrieveResponse)
      end
      def retrieve(
        # Identifies the SIM group.
        id,
        # It includes a list of associated ICCIDs.
        include_iccids: nil,
        request_options: {}
      )
      end

      # Updates a SIM card group
      sig do
        params(
          id: String,
          data_limit: Telnyx::SimCardGroupUpdateParams::DataLimit::OrHash,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGroupUpdateResponse)
      end
      def update(
        # Identifies the SIM group.
        id,
        # Upper limit on the amount of data the SIM cards, within the group, can use.
        data_limit: nil,
        # A user friendly name for the SIM card group.
        name: nil,
        request_options: {}
      )
      end

      # Get all SIM card groups belonging to the user that match the given filters.
      sig do
        params(
          filter_name: String,
          filter_private_wireless_gateway_id: String,
          filter_wireless_blocklist_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGroupListResponse)
      end
      def list(
        # A valid SIM card group name.
        filter_name: nil,
        # A Private Wireless Gateway ID associated with the group.
        filter_private_wireless_gateway_id: nil,
        # A Wireless Blocklist ID associated with the group.
        filter_wireless_blocklist_id: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      # Permanently deletes a SIM card group
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGroupDeleteResponse)
      end
      def delete(
        # Identifies the SIM group.
        id,
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
