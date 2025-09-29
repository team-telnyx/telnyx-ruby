# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Portouts#update_status
    class PortoutUpdateStatusParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute reason
      #   Provide a reason if rejecting the port out request
      #
      #   @return [String]
      required :reason, String

      # @!attribute host_messaging
      #   Indicates whether messaging services should be maintained with Telnyx after the
      #   port out completes
      #
      #   @return [Boolean, nil]
      optional :host_messaging, Telnyx::Internal::Type::Boolean

      # @!method initialize(id:, reason:, host_messaging: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortoutUpdateStatusParams} for more details.
      #
      #   @param id [String]
      #
      #   @param reason [String] Provide a reason if rejecting the port out request
      #
      #   @param host_messaging [Boolean] Indicates whether messaging services should be maintained with Telnyx after the
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend Telnyx::Internal::Type::Enum

        AUTHORIZED = :authorized
        REJECTED_PENDING = :"rejected-pending"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
