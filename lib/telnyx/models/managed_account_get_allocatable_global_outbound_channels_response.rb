# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ManagedAccounts#get_allocatable_global_outbound_channels
    class ManagedAccountGetAllocatableGlobalOutboundChannelsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data, nil]
      optional :data, -> { Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data]

      # @see Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute allocatable_global_outbound_channels
        #   The total amount of allocatable global outbound channels available to the
        #   authenticated manager. Will be 0 if the feature is not enabled for their
        #   account.
        #
        #   @return [Integer, nil]
        optional :allocatable_global_outbound_channels, Integer

        # @!attribute managed_account_allow_custom_pricing
        #   Boolean value that indicates if the managed account is able to have custom
        #   pricing set for it or not. If false, uses the pricing of the manager account.
        #   Defaults to false. This value may be changed, but there may be time lag between
        #   when the value is changed and pricing changes take effect.
        #
        #   @return [Boolean, nil]
        optional :managed_account_allow_custom_pricing, Telnyx::Internal::Type::Boolean

        # @!attribute record_type
        #   The type of the data contained in this record.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute total_global_channels_allocated
        #   The total number of allocatable global outbound channels currently allocated
        #   across all managed accounts for the authenticated user. This includes any amount
        #   of channels allocated by default at managed account creation time. Will be 0 if
        #   the feature is not enabled for their account.
        #
        #   @return [Integer, nil]
        optional :total_global_channels_allocated, Integer

        # @!method initialize(allocatable_global_outbound_channels: nil, managed_account_allow_custom_pricing: nil, record_type: nil, total_global_channels_allocated: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ManagedAccountGetAllocatableGlobalOutboundChannelsResponse::Data}
        #   for more details.
        #
        #   @param allocatable_global_outbound_channels [Integer] The total amount of allocatable global outbound channels available to the authen
        #
        #   @param managed_account_allow_custom_pricing [Boolean] Boolean value that indicates if the managed account is able to have custom prici
        #
        #   @param record_type [String] The type of the data contained in this record.
        #
        #   @param total_global_channels_allocated [Integer] The total number of allocatable global outbound channels currently allocated acr
      end
    end
  end
end
