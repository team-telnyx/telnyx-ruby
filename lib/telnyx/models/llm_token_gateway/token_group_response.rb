# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::TokenGroups#create
      class TokenGroupResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::LlmTokenGateway::TokenGroup]
        required :data, -> { Telnyx::LlmTokenGateway::TokenGroup }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::LlmTokenGateway::TokenGroup]
      end
    end
  end
end
