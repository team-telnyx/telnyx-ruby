# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumbers#update
    class MessagingHostedNumberUpdateParams < Telnyx::Models::UpdatePhoneNumberMessagingSettingsRequest
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
