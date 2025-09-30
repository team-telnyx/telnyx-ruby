# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::Actions#share
      class ActionShareResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::ActionShareResponse::Data, nil]
        optional :data, -> { Telnyx::Models::PortingOrders::ActionShareResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::ActionShareResponse::Data]

        # @see Telnyx::Models::PortingOrders::ActionShareResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies this sharing token
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute token
          #   A signed JWT token that can be used to access the shared resource
          #
          #   @return [String, nil]
          optional :token, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute expires_at
          #   ISO 8601 formatted date indicating when the sharing token expires.
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute expires_in_seconds
          #   The number of seconds until the sharing token expires
          #
          #   @return [Integer, nil]
          optional :expires_in_seconds, Integer

          # @!attribute permissions
          #   The permissions granted to the sharing token
          #
          #   @return [Array<Symbol, Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission>, nil]
          optional :permissions,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission] }

          # @!attribute porting_order_id
          #   Identifies the porting order resource being shared
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          response_only do
            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(id: nil, token: nil, created_at: nil, expires_at: nil, expires_in_seconds: nil, permissions: nil, porting_order_id: nil, record_type: nil)
          #   @param id [String] Uniquely identifies this sharing token
          #
          #   @param token [String] A signed JWT token that can be used to access the shared resource
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param expires_at [Time] ISO 8601 formatted date indicating when the sharing token expires.
          #
          #   @param expires_in_seconds [Integer] The number of seconds until the sharing token expires
          #
          #   @param permissions [Array<Symbol, Telnyx::Models::PortingOrders::ActionShareResponse::Data::Permission>] The permissions granted to the sharing token
          #
          #   @param porting_order_id [String] Identifies the porting order resource being shared
          #
          #   @param record_type [String] Identifies the type of the resource.

          module Permission
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
end
