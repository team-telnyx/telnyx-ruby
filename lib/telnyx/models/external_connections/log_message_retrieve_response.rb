# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::LogMessages#retrieve
      class LogMessageRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute log_messages
        #
        #   @return [Array<Telnyx::Models::ExternalConnections::LogMessage>, nil]
        optional :log_messages, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::LogMessage] }

        # @!method initialize(log_messages: nil)
        #   @param log_messages [Array<Telnyx::Models::ExternalConnections::LogMessage>]
      end
    end
  end
end
