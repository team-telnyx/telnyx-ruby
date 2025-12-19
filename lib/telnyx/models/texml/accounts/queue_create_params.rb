# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Queues#create
        class QueueCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute friendly_name
          #   A human readable name for the queue.
          #
          #   @return [String, nil]
          optional :friendly_name, String, api_name: :FriendlyName

          # @!attribute max_size
          #   The maximum size of the queue.
          #
          #   @return [Integer, nil]
          optional :max_size, Integer, api_name: :MaxSize

          # @!method initialize(friendly_name: nil, max_size: nil, request_options: {})
          #   @param friendly_name [String] A human readable name for the queue.
          #
          #   @param max_size [Integer] The maximum size of the queue.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
