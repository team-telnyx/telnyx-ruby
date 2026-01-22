# typed: strong

module Telnyx
  module Resources
    class SimCards
      class Actions
        # This API fetches detailed information about a SIM card action to follow-up on an
        # existing asynchronous operation.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCards::ActionRetrieveResponse)
        end
        def retrieve(
          # Identifies the resource.
          id,
          request_options: {}
        )
        end

        # This API lists a paginated collection of SIM card actions. It enables exploring
        # a collection of existing asynchronous operations using specific filters.
        sig do
          params(
            filter: Telnyx::SimCards::ActionListParams::Filter::OrHash,
            page: Telnyx::SimCards::ActionListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[Telnyx::SimCards::SimCardAction]
          )
        end
        def list(
          # Consolidated filter parameter for SIM card actions (deepObject style).
          # Originally: filter[sim_card_id], filter[status],
          # filter[bulk_sim_card_action_id], filter[action_type]
          filter: nil,
          # Consolidated pagination parameter (deepObject style). Originally: page[number],
          # page[size]
          page: nil,
          request_options: {}
        )
        end

        # This API triggers an asynchronous operation to set a public IP for each of the
        # specified SIM cards.<br/> For each SIM Card a SIM Card Action will be generated.
        # The status of the SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api-reference/sim-card-actions/list-sim-card-actions)
        # API.
        sig do
          params(
            sim_card_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse)
        end
        def bulk_set_public_ips(sim_card_ids:, request_options: {})
        end

        # This API disables a SIM card, disconnecting it from the network and making it
        # impossible to consume data.<br/> The API will trigger an asynchronous operation
        # called a SIM Card Action. Transitioning to the disabled state may take a period
        # of time. The status of the SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api-reference/sim-card-actions/list-sim-card-actions)
        # API.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCards::ActionDisableResponse)
        end
        def disable(
          # Identifies the SIM.
          id,
          request_options: {}
        )
        end

        # This API enables a SIM card, connecting it to the network and making it possible
        # to consume data.<br/> To enable a SIM card, it must be associated with a SIM
        # card group.<br/> The API will trigger an asynchronous operation called a SIM
        # Card Action. Transitioning to the enabled state may take a period of time. The
        # status of the SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api-reference/sim-card-actions/list-sim-card-actions)
        # API.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCards::ActionEnableResponse)
        end
        def enable(
          # Identifies the SIM.
          id,
          request_options: {}
        )
        end

        # This API removes an existing public IP from a SIM card. <br/><br/> The API will
        # trigger an asynchronous operation called a SIM Card Action. The status of the
        # SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api-reference/sim-card-actions/list-sim-card-actions)
        # API.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCards::ActionRemovePublicIPResponse)
        end
        def remove_public_ip(
          # Identifies the SIM.
          id,
          request_options: {}
        )
        end

        # This API makes a SIM card reachable on the public internet by mapping a random
        # public IP to the SIM card. <br/><br/> The API will trigger an asynchronous
        # operation called a SIM Card Action. The status of the SIM Card Action can be
        # followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api-reference/sim-card-actions/list-sim-card-actions)
        # API. <br/><br/> Setting a Public IP to a SIM Card incurs a charge and will only
        # succeed if the account has sufficient funds.
        sig do
          params(
            id: String,
            region_code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCards::ActionSetPublicIPResponse)
        end
        def set_public_ip(
          # Identifies the SIM.
          id,
          # The code of the region where the public IP should be assigned. A list of
          # available regions can be found at the regions endpoint
          region_code: nil,
          request_options: {}
        )
        end

        # The SIM card will be able to connect to the network once the process to set it
        # to standby has been completed, thus making it possible to consume data.<br/> To
        # set a SIM card to standby, it must be associated with SIM card group.<br/> The
        # API will trigger an asynchronous operation called a SIM Card Action.
        # Transitioning to the standby state may take a period of time. The status of the
        # SIM Card Action can be followed through the
        # [List SIM Card Action](https://developers.telnyx.com/api-reference/sim-card-actions/list-sim-card-actions)
        # API.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::SimCards::ActionSetStandbyResponse)
        end
        def set_standby(
          # Identifies the SIM.
          id,
          request_options: {}
        )
        end

        # It validates whether SIM card registration codes are valid or not.
        sig do
          params(
            registration_codes: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::SimCards::ActionValidateRegistrationCodesResponse
          )
        end
        def validate_registration_codes(
          registration_codes: nil,
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
