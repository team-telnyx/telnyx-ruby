# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::Comments#create
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::CommentCreateResponse::Data, nil]
        optional :data, -> { Telnyx::Models::PortingOrders::CommentCreateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::CommentCreateResponse::Data]

        # @see Telnyx::Models::PortingOrders::CommentCreateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute body
          #   Body of comment
          #
          #   @return [String, nil]
          optional :body, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute porting_order_id
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute user_type
          #   Indicates whether this comment was created by a Telnyx Admin, user, or system
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType, nil]
          optional :user_type, enum: -> { Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType }

          # @!method initialize(id: nil, body: nil, created_at: nil, porting_order_id: nil, record_type: nil, user_type: nil)
          #   @param id [String]
          #
          #   @param body [String] Body of comment
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param porting_order_id [String]
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param user_type [Symbol, Telnyx::Models::PortingOrders::CommentCreateResponse::Data::UserType] Indicates whether this comment was created by a Telnyx Admin, user, or system

          # Indicates whether this comment was created by a Telnyx Admin, user, or system
          #
          # @see Telnyx::Models::PortingOrders::CommentCreateResponse::Data#user_type
          module UserType
            extend Telnyx::Internal::Type::Enum

            ADMIN = :admin
            USER = :user
            SYSTEM = :system

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
