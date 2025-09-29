# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#create
    class MessagingHostedNumberOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute messaging_profile_id
      #   Automatically associate the number with this messaging profile ID when the order
      #   is complete.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute phone_numbers
      #   Phone numbers to be used for hosted messaging.
      #
      #   @return [Array<String>, nil]
      optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(messaging_profile_id: nil, phone_numbers: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessagingHostedNumberOrderCreateParams} for more details.
      #
      #   @param messaging_profile_id [String] Automatically associate the number with this messaging profile ID when the order
      #
      #   @param phone_numbers [Array<String>] Phone numbers to be used for hosted messaging.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
