# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      class EmailDraftRequest < Telnyx::Internal::Type::BaseModel
        # @!attribute attachments
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :attachments,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute bcc
        #
        #   @return [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>, nil]
        optional :bcc, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::EmailAddressInput] }

        # @!attribute cc
        #
        #   @return [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>, nil]
        optional :cc, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::EmailAddressInput] }

        # @!attribute from_email
        #
        #   @return [String, nil]
        optional :from_email, String

        # @!attribute from_name
        #
        #   @return [String, nil]
        optional :from_name, String

        # @!attribute headers
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :headers, Telnyx::Internal::Type::HashOf[String]

        # @!attribute html
        #   Alias for `html_body`, matching the send endpoint.
        #
        #   @return [String, nil]
        optional :html, String

        # @!attribute html_body
        #
        #   @return [String, nil]
        optional :html_body, String

        # @!attribute labels
        #
        #   @return [Array<String>, nil]
        optional :labels, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute reply_to
        #
        #   @return [String, nil]
        optional :reply_to, String

        # @!attribute subject
        #
        #   @return [String, nil]
        optional :subject, String

        # @!attribute tags
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute text
        #   Alias for `text_body`, matching the send endpoint.
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute text_body
        #
        #   @return [String, nil]
        optional :text_body, String

        # @!attribute to
        #
        #   @return [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>, nil]
        optional :to, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::EmailAddressInput] }

        # @!method initialize(attachments: nil, bcc: nil, cc: nil, from_email: nil, from_name: nil, headers: nil, html: nil, html_body: nil, labels: nil, metadata: nil, reply_to: nil, subject: nil, tags: nil, text: nil, text_body: nil, to: nil)
        #   All fields are optional — a draft may be saved incomplete. `account_id`,
        #   `inbox_id`, `status`, `sent_at`, `sent_message_id`, `reply_to_message_id` and
        #   `thread_id` are server-owned and ignored if supplied.
        #
        #   @param attachments [Array<Hash{Symbol=>Object}>]
        #
        #   @param bcc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param cc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
        #
        #   @param from_email [String]
        #
        #   @param from_name [String]
        #
        #   @param headers [Hash{Symbol=>String}]
        #
        #   @param html [String] Alias for `html_body`, matching the send endpoint.
        #
        #   @param html_body [String]
        #
        #   @param labels [Array<String>]
        #
        #   @param metadata [Hash{Symbol=>Object}]
        #
        #   @param reply_to [String]
        #
        #   @param subject [String]
        #
        #   @param tags [Array<String>]
        #
        #   @param text [String] Alias for `text_body`, matching the send endpoint.
        #
        #   @param text_body [String]
        #
        #   @param to [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
      end
    end
  end
end
