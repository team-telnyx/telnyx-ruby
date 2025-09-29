# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ManagedAccounts#update_global_channel_limit
    class ManagedAccountUpdateGlobalChannelLimitParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute channel_limit
      #   Integer value that indicates the number of allocatable global outbound channels
      #   that should be allocated to the managed account. Must be 0 or more. If the value
      #   is 0 then the account will have no usable channels and will not be able to
      #   perform outbound calling.
      #
      #   @return [Integer, nil]
      optional :channel_limit, Integer

      # @!method initialize(channel_limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitParams} for more details.
      #
      #   @param channel_limit [Integer] Integer value that indicates the number of allocatable global outbound channels
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
