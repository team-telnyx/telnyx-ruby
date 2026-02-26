# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      class PortingEventNewCommentEvent < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute available_notification_methods
        #   Indicates the notification methods used.
        #
        #   @return [Array<Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod>, nil]
        optional :available_notification_methods,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod] }

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute event_type
        #   Identifies the event type
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::EventType, nil]
        optional :event_type, enum: -> { Telnyx::Porting::PortingEventNewCommentEvent::EventType }

        # @!attribute payload
        #   The webhook payload for the porting_order.new_comment event
        #
        #   @return [Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload, nil]
        optional :payload, -> { Telnyx::Porting::PortingEventNewCommentEvent::Payload }

        # @!attribute payload_status
        #   The status of the payload generation.
        #
        #   @return [Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::PayloadStatus, nil]
        optional :payload_status, enum: -> { Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus }

        # @!attribute porting_order_id
        #   Identifies the porting order associated with the event.
        #
        #   @return [String, nil]
        optional :porting_order_id, String

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(id: nil, available_notification_methods: nil, created_at: nil, event_type: nil, payload: nil, payload_status: nil, porting_order_id: nil, record_type: nil, updated_at: nil)
        #   @param id [String] Uniquely identifies the event.
        #
        #   @param available_notification_methods [Array<Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod>] Indicates the notification methods used.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param event_type [Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::EventType] Identifies the event type
        #
        #   @param payload [Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload] The webhook payload for the porting_order.new_comment event
        #
        #   @param payload_status [Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::PayloadStatus] The status of the payload generation.
        #
        #   @param porting_order_id [String] Identifies the porting order associated with the event.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

        module AvailableNotificationMethod
          extend Telnyx::Internal::Type::Enum

          EMAIL = :email
          WEBHOOK = :webhook
          WEBHOOK_V1 = :webhook_v1

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Identifies the event type
        #
        # @see Telnyx::Models::Porting::PortingEventNewCommentEvent#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          PORTING_ORDER_DELETED = :"porting_order.deleted"
          PORTING_ORDER_LOA_UPDATED = :"porting_order.loa_updated"
          PORTING_ORDER_MESSAGING_CHANGED = :"porting_order.messaging_changed"
          PORTING_ORDER_STATUS_CHANGED = :"porting_order.status_changed"
          PORTING_ORDER_SHARING_TOKEN_EXPIRED = :"porting_order.sharing_token_expired"
          PORTING_ORDER_NEW_COMMENT = :"porting_order.new_comment"
          PORTING_ORDER_SPLIT = :"porting_order.split"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Porting::PortingEventNewCommentEvent#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute comment
          #   The comment that was added to the porting order.
          #
          #   @return [Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload::Comment, nil]
          optional :comment, -> { Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment }

          # @!attribute porting_order_id
          #   Identifies the porting order that the comment was added to.
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          # @!attribute support_key
          #   Identifies the support key associated with the porting order.
          #
          #   @return [String, nil]
          optional :support_key, String

          # @!method initialize(comment: nil, porting_order_id: nil, support_key: nil)
          #   The webhook payload for the porting_order.new_comment event
          #
          #   @param comment [Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload::Comment] The comment that was added to the porting order.
          #
          #   @param porting_order_id [String] Identifies the porting order that the comment was added to.
          #
          #   @param support_key [String] Identifies the support key associated with the porting order.

          # @see Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload#comment
          class Comment < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Identifies the comment.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute body
            #   The body of the comment.
            #
            #   @return [String, nil]
            optional :body, String

            # @!attribute inserted_at
            #   ISO 8601 formatted date indicating when the comment was created.
            #
            #   @return [Time, nil]
            optional :inserted_at, Time

            # @!attribute user_id
            #   Identifies the user that create the comment.
            #
            #   @return [String, nil]
            optional :user_id, String

            # @!attribute user_type
            #   Identifies the type of the user that created the comment.
            #
            #   @return [Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType, nil]
            optional :user_type, enum: -> { Telnyx::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType }

            # @!method initialize(id: nil, body: nil, inserted_at: nil, user_id: nil, user_type: nil)
            #   The comment that was added to the porting order.
            #
            #   @param id [String] Identifies the comment.
            #
            #   @param body [String] The body of the comment.
            #
            #   @param inserted_at [Time] ISO 8601 formatted date indicating when the comment was created.
            #
            #   @param user_id [String] Identifies the user that create the comment.
            #
            #   @param user_type [Symbol, Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload::Comment::UserType] Identifies the type of the user that created the comment.

            # Identifies the type of the user that created the comment.
            #
            # @see Telnyx::Models::Porting::PortingEventNewCommentEvent::Payload::Comment#user_type
            module UserType
              extend Telnyx::Internal::Type::Enum

              USER = :user
              ADMIN = :admin
              SYSTEM = :system

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # The status of the payload generation.
        #
        # @see Telnyx::Models::Porting::PortingEventNewCommentEvent#payload_status
        module PayloadStatus
          extend Telnyx::Internal::Type::Enum

          CREATED = :created
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PortingEventNewCommentEvent = Porting::PortingEventNewCommentEvent
  end
end
