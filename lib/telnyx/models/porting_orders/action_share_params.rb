# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::Actions#share
      class ActionShareParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute expires_in_seconds
        #   The number of seconds the token will be valid for
        #
        #   @return [Integer, nil]
        optional :expires_in_seconds, Integer

        # @!attribute permissions
        #   The permissions the token will have
        #
        #   @return [Symbol, Telnyx::Models::PortingOrders::ActionShareParams::Permissions, nil]
        optional :permissions, enum: -> { Telnyx::PortingOrders::ActionShareParams::Permissions }

        # @!method initialize(expires_in_seconds: nil, permissions: nil, request_options: {})
        #   @param expires_in_seconds [Integer] The number of seconds the token will be valid for
        #
        #   @param permissions [Symbol, Telnyx::Models::PortingOrders::ActionShareParams::Permissions] The permissions the token will have
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The permissions the token will have
        module Permissions
          extend Telnyx::Internal::Type::Enum

          PORTING_ORDER_DOCUMENT_READ = :"porting_order.document.read"
          PORTING_ORDER_DOCUMENT_UPDATE = :"porting_order.document.update"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
