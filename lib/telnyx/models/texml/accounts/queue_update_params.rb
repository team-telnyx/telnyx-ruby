# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Queues#update
        class QueueUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute account_sid
          #
          #   @return [String]
          required :account_sid, String

          # @!attribute max_size
          #   The maximum size of the queue.
          #
          #   @return [Integer, nil]
          optional :max_size, Integer, api_name: :MaxSize

          # @!method initialize(account_sid:, max_size: nil, request_options: {})
          #   @param account_sid [String]
          #
          #   @param max_size [Integer] The maximum size of the queue.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
