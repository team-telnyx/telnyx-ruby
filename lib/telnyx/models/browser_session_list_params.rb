# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BrowserSessions#list
    class BrowserSessionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::BrowserSessionListParams::Status, nil]
      optional :status, enum: -> { Telnyx::BrowserSessionListParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Telnyx::Models::BrowserSessionListParams::Status]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend Telnyx::Internal::Type::Enum

        PROVISIONING = :provisioning
        READY = :ready
        CLOSING = :closing
        CLOSED = :closed
        FAILED = :failed
        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
