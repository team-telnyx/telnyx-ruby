# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ManagedAccounts#update_global_channel_limit
    class ManagedAccountUpdateGlobalChannelLimitResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data, nil]
      optional :data, -> { Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data]

      # @see Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The user ID of the managed account.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute channel_limit
        #   Integer value that indicates the number of allocatable global outbound channels
        #   that are allocated to the managed account. If the value is 0 then the account
        #   will have no usable channels and will not be able to perform outbound calling.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!attribute email
        #   The email of the managed account.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute manager_account_id
        #   The user ID of the manager of the account.
        #
        #   @return [String, nil]
        optional :manager_account_id, String

        # @!attribute record_type
        #   The name of the type of data in the response.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!method initialize(id: nil, channel_limit: nil, email: nil, manager_account_id: nil, record_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ManagedAccountUpdateGlobalChannelLimitResponse::Data} for more
        #   details.
        #
        #   @param id [String] The user ID of the managed account.
        #
        #   @param channel_limit [Integer] Integer value that indicates the number of allocatable global outbound channels
        #
        #   @param email [String] The email of the managed account.
        #
        #   @param manager_account_id [String] The user ID of the manager of the account.
        #
        #   @param record_type [String] The name of the type of data in the response.
      end
    end
  end
end
