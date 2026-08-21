# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Drafts#send_
      class EmailMessageResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailInboxes::EmailMessage]
        required :data, -> { Telnyx::EmailInboxes::EmailMessage }

        # @!attribute suppressed
        #   Recipients removed by suppression checks when at least one recipient remains and
        #   the message is accepted.
        #
        #   @return [Array<Telnyx::Models::SuppressedRecipient>, nil]
        optional :suppressed, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SuppressedRecipient] }

        # @!method initialize(data:, suppressed: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailInboxes::EmailMessageResponse} for more details.
        #
        #   @param data [Telnyx::Models::EmailInboxes::EmailMessage]
        #
        #   @param suppressed [Array<Telnyx::Models::SuppressedRecipient>] Recipients removed by suppression checks when at least one recipient remains and
      end
    end
  end
end
