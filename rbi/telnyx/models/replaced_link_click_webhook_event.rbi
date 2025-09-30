# typed: strong

module Telnyx
  module Models
    class ReplacedLinkClickWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ReplacedLinkClickWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ReplacedLinkClickWebhookEvent::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::ReplacedLinkClickWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::ReplacedLinkClickWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::ReplacedLinkClickWebhookEvent::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ReplacedLinkClickWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The message ID associated with the clicked link.
        sig { returns(T.nilable(String)) }
        attr_reader :message_id

        sig { params(message_id: String).void }
        attr_writer :message_id

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date indicating when the message request was received.
        sig { returns(T.nilable(Time)) }
        attr_reader :time_clicked

        sig { params(time_clicked: Time).void }
        attr_writer :time_clicked

        # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        # code).
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        # The original link that was sent in the message.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            message_id: String,
            record_type: String,
            time_clicked: Time,
            to: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The message ID associated with the clicked link.
          message_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating when the message request was received.
          time_clicked: nil,
          # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          # code).
          to: nil,
          # The original link that was sent in the message.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              message_id: String,
              record_type: String,
              time_clicked: Time,
              to: String,
              url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
