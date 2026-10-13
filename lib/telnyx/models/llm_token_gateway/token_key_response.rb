# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::TokenKeys#create
      class TokenKeyResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::LlmTokenGateway::TokenKey]
        required :data, -> { Telnyx::LlmTokenGateway::TokenKey }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::LlmTokenGateway::TokenKey]
      end
    end
  end
end
