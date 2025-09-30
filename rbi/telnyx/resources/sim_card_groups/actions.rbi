# typed: strong

module Telnyx
  module Resources
    class SimCardGroups
      class Actions
        # This API allows fetching detailed information about a SIM card group action
        # resource to make follow-ups in an existing asynchronous operation.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCardGroups::ActionRetrieveResponse)
        end
        def retrieve(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # This API allows listing a paginated collection a SIM card group actions. It
        # allows to explore a collection of existing asynchronous operation using specific
        # filters.
        sig do
          params(
            filter_sim_card_group_id: String,
            filter_status:
              Telnyx::SimCardGroups::ActionListParams::FilterStatus::OrSymbol,
            filter_type:
              Telnyx::SimCardGroups::ActionListParams::FilterType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCardGroups::ActionListResponse)
        end
        def list(
          # A valid SIM card group ID.
          filter_sim_card_group_id: nil,
          # Filter by a specific status of the resource's lifecycle.
          filter_status: nil,
          # Filter by action type.
          filter_type: nil,
          # The page number to load.
          page_number: nil,
          # The size of the page.
          page_size: nil,
          request_options: {}
        )
        end

        # This action will asynchronously remove an existing Private Wireless Gateway
        # definition from a SIM card group. Completing this operation defines that all SIM
        # cards in the SIM card group will get their traffic handled by Telnyx's default
        # mobile network configuration.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::SimCardGroups::ActionRemovePrivateWirelessGatewayResponse
          )
        end
        def remove_private_wireless_gateway(
          # Identifies the SIM group.
          id,
          request_options: {}
        )
        end

        # This action will asynchronously remove an existing Wireless Blocklist to all the
        # SIMs in the SIM card group.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::SimCardGroups::ActionRemoveWirelessBlocklistResponse
          )
        end
        def remove_wireless_blocklist(
          # Identifies the SIM group.
          id,
          request_options: {}
        )
        end

        # This action will asynchronously assign a provisioned Private Wireless Gateway to
        # the SIM card group. Completing this operation defines that all SIM cards in the
        # SIM card group will get their traffic controlled by the associated Private
        # Wireless Gateway. This operation will also imply that new SIM cards assigned to
        # a group will inherit its network definitions. If it's moved to a different group
        # that doesn't have a Private Wireless Gateway, it'll use Telnyx's default mobile
        # network configuration.
        sig do
          params(
            id: String,
            private_wireless_gateway_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::SimCardGroups::ActionSetPrivateWirelessGatewayResponse
          )
        end
        def set_private_wireless_gateway(
          # Identifies the SIM group.
          id,
          # The identification of the related Private Wireless Gateway resource.
          private_wireless_gateway_id:,
          request_options: {}
        )
        end

        # This action will asynchronously assign a Wireless Blocklist to all the SIMs in
        # the SIM card group.
        sig do
          params(
            id: String,
            wireless_blocklist_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::SimCardGroups::ActionSetWirelessBlocklistResponse
          )
        end
        def set_wireless_blocklist(
          # Identifies the SIM group.
          id,
          # The identification of the related Wireless Blocklist resource.
          wireless_blocklist_id:,
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
end
