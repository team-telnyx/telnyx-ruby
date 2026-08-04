# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#retrieve
    class EmailMessageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EmailMessageRetrieveResponse::Data]
      required :data, -> { Telnyx::Models::EmailMessageRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EmailMessageRetrieveResponse::Data]

      # @see Telnyx::Models::EmailMessageRetrieveResponse#data
      class Data < Telnyx::Models::EmailInboxes::EmailMessage
        # @!attribute html_body
        #   HTML body submitted for the message.
        #
        #   @return [String, nil]
        required :html_body, String, nil?: true

        # @!attribute text_body
        #   Plain-text body submitted for the message.
        #
        #   @return [String, nil]
        required :text_body, String, nil?: true

        # @!method initialize(html_body:, text_body:)
        #   @param html_body [String, nil] HTML body submitted for the message.
        #
        #   @param text_body [String, nil] Plain-text body submitted for the message.
      end
    end
  end
end
