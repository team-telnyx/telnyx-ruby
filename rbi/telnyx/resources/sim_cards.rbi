# typed: strong

module Telnyx
  module Resources
    class SimCards
      sig { returns(Telnyx::Resources::SimCards::Actions) }
      attr_reader :actions

      # Returns the details regarding a specific SIM card.
      sig do
        params(
          id: String,
          include_pin_puk_codes: T::Boolean,
          include_sim_card_group: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardRetrieveResponse)
      end
      def retrieve(
        # Identifies the SIM.
        id,
        # When set to true, includes the PIN and PUK codes in the response. These codes
        # are used for SIM card security and unlocking purposes. Available for both
        # physical SIM cards and eSIMs.
        include_pin_puk_codes: nil,
        # It includes the associated SIM card group object in the response when present.
        include_sim_card_group: nil,
        request_options: {}
      )
      end

      # Updates SIM card data
      sig do
        params(
          sim_card_id: String,
          authorized_imeis: T.nilable(T::Array[String]),
          data_limit: Telnyx::SimCard::DataLimit::OrHash,
          sim_card_group_id: String,
          status: Telnyx::SimCardStatus::OrHash,
          tags: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardUpdateResponse)
      end
      def update(
        # Identifies the SIM.
        sim_card_id,
        # List of IMEIs authorized to use a given SIM card.
        authorized_imeis: nil,
        # The SIM card individual data limit configuration.
        data_limit: nil,
        # The group SIMCardGroup identification. This attribute can be <code>null</code>
        # when it's present in an associated resource.
        sim_card_group_id: nil,
        status: nil,
        # Searchable tags associated with the SIM card
        tags: nil,
        request_options: {}
      )
      end

      # Get all SIM cards belonging to the user that match the given filters.
      sig do
        params(
          filter: Telnyx::SimCardListParams::Filter::OrHash,
          filter_sim_card_group_id: String,
          include_sim_card_group: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::SimCardListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::SimpleSimCard]
        )
      end
      def list(
        # Consolidated filter parameter for SIM cards (deepObject style). Originally:
        # filter[tags], filter[iccid], filter[status]
        filter: nil,
        # A valid SIM card group ID.
        filter_sim_card_group_id: nil,
        # It includes the associated SIM card group object in the response when present.
        include_sim_card_group: nil,
        page_number: nil,
        page_size: nil,
        # Sorts SIM cards by the given field. Defaults to ascending order unless field is
        # prefixed with a minus sign.
        sort: nil,
        request_options: {}
      )
      end

      # The SIM card will be decommissioned, removed from your account and you will stop
      # being charged.<br />The SIM card won't be able to connect to the network after
      # the deletion is completed, thus making it impossible to consume data.<br/>
      # Transitioning to the disabled state may take a period of time. Until the
      # transition is completed, the SIM card status will be disabling
      # <code>disabling</code>.<br />In order to re-enable the SIM card, you will need
      # to re-register it.
      sig do
        params(
          id: String,
          report_lost: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardDeleteResponse)
      end
      def delete(
        # Identifies the SIM.
        id,
        # Enables deletion of disabled eSIMs that can't be uninstalled from a device. This
        # is irreversible and the eSIM cannot be re-registered.
        report_lost: nil,
        request_options: {}
      )
      end

      # It returns the activation code for an eSIM.<br/><br/> This API is only available
      # for eSIMs. If the given SIM is a physical SIM card, or has already been
      # installed, an error will be returned.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGetActivationCodeResponse)
      end
      def get_activation_code(
        # Identifies the SIM.
        id,
        request_options: {}
      )
      end

      # It returns the device details where a SIM card is currently being used.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGetDeviceDetailsResponse)
      end
      def get_device_details(
        # Identifies the SIM.
        id,
        request_options: {}
      )
      end

      # It returns the public IP requested for a SIM card.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SimCardGetPublicIPResponse)
      end
      def get_public_ip(
        # Identifies the SIM.
        id,
        request_options: {}
      )
      end

      # This API allows listing a paginated collection of Wireless Connectivity Logs
      # associated with a SIM Card, for troubleshooting purposes.
      sig do
        params(
          id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::SimCardListWirelessConnectivityLogsResponse
          ]
        )
      end
      def list_wireless_connectivity_logs(
        # Identifies the SIM.
        id,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
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
