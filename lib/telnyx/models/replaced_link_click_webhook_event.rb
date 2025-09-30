# frozen_string_literal: true

module Telnyx
  module Models
    class ReplacedLinkClickWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ReplacedLinkClickWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::ReplacedLinkClickWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ReplacedLinkClickWebhookEvent::Data]

      # @see Telnyx::Models::ReplacedLinkClickWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute message_id
        #   The message ID associated with the clicked link.
        #
        #   @return [String, nil]
        optional :message_id, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute time_clicked
        #   ISO 8601 formatted date indicating when the message request was received.
        #
        #   @return [Time, nil]
        optional :time_clicked, Time

        # @!attribute to
        #   Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #   code).
        #
        #   @return [String, nil]
        optional :to, String

        # @!attribute url
        #   The original link that was sent in the message.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(message_id: nil, record_type: nil, time_clicked: nil, to: nil, url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ReplacedLinkClickWebhookEvent::Data} for more details.
        #
        #   @param message_id [String] The message ID associated with the clicked link.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param time_clicked [Time] ISO 8601 formatted date indicating when the message request was received.
        #
        #   @param to [String] Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
        #
        #   @param url [String] The original link that was sent in the message.
      end
    end
  end
end
