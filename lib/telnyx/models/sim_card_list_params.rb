# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#list
    class SimCardListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for SIM cards (deepObject style). Originally:
      #   filter[tags], filter[iccid], filter[status]
      #
      #   @return [Telnyx::Models::SimCardListParams::Filter, nil]
      optional :filter, -> { Telnyx::SimCardListParams::Filter }

      # @!attribute filter_sim_card_group_id
      #   A valid SIM card group ID.
      #
      #   @return [String, nil]
      optional :filter_sim_card_group_id, String

      # @!attribute include_sim_card_group
      #   It includes the associated SIM card group object in the response when present.
      #
      #   @return [Boolean, nil]
      optional :include_sim_card_group, Telnyx::Internal::Type::Boolean

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Sorts SIM cards by the given field. Defaults to ascending order unless field is
      #   prefixed with a minus sign.
      #
      #   @return [Symbol, Telnyx::Models::SimCardListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::SimCardListParams::Sort }

      # @!method initialize(filter: nil, filter_sim_card_group_id: nil, include_sim_card_group: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardListParams} for more details.
      #
      #   @param filter [Telnyx::Models::SimCardListParams::Filter] Consolidated filter parameter for SIM cards (deepObject style). Originally: filt
      #
      #   @param filter_sim_card_group_id [String] A valid SIM card group ID.
      #
      #   @param include_sim_card_group [Boolean] It includes the associated SIM card group object in the response when present.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Symbol, Telnyx::Models::SimCardListParams::Sort] Sorts SIM cards by the given field. Defaults to ascending order unless field is
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute iccid
        #   A search string to partially match for the SIM card's ICCID.
        #
        #   @return [String, nil]
        optional :iccid, String

        # @!attribute status
        #   Filter by a SIM card's status.
        #
        #   @return [Array<Symbol, Telnyx::Models::SimCardListParams::Filter::Status>, nil]
        optional :status, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::SimCardListParams::Filter::Status] }

        # @!attribute tags
        #   A list of SIM card tags to filter on.<br/><br/> If the SIM card contains
        #   <b><i>all</i></b> of the given <code>tags</code> they will be found.<br/><br/>
        #   For example, if the SIM cards have the following tags: <ul>
        #
        #     <li><code>['customers', 'staff', 'test']</code>
        #     <li><code>['test']</code></li>
        #     <li><code>['customers']</code></li>
        #   </ul>
        #   Searching for <code>['customers', 'test']</code> returns only the first because it's the only one with both tags.<br/> Searching for <code>test</code> returns the first two SIMs, because both of them have such tag.<br/> Searching for <code>customers</code> returns the first and last SIMs.<br/>
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(iccid: nil, status: nil, tags: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCardListParams::Filter} for more details.
        #
        #   Consolidated filter parameter for SIM cards (deepObject style). Originally:
        #   filter[tags], filter[iccid], filter[status]
        #
        #   @param iccid [String] A search string to partially match for the SIM card's ICCID.
        #
        #   @param status [Array<Symbol, Telnyx::Models::SimCardListParams::Filter::Status>] Filter by a SIM card's status.
        #
        #   @param tags [Array<String>] A list of SIM card tags to filter on.<br/><br/>

        module Status
          extend Telnyx::Internal::Type::Enum

          ENABLED = :enabled
          DISABLED = :disabled
          STANDBY = :standby
          DATA_LIMIT_EXCEEDED = :data_limit_exceeded
          UNAUTHORIZED_IMEI = :unauthorized_imei

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Sorts SIM cards by the given field. Defaults to ascending order unless field is
      # prefixed with a minus sign.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CURRENT_BILLING_PERIOD_CONSUMED_DATA_AMOUNT = :"current_billing_period_consumed_data.amount"
        MINUS_CURRENT_BILLING_PERIOD_CONSUMED_DATA_AMOUNT = :"-current_billing_period_consumed_data.amount"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
