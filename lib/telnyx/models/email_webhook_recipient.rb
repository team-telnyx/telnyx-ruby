# frozen_string_literal: true

module Telnyx
  module Models
    class EmailWebhookRecipient < Telnyx::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute kind
      #
      #   @return [Symbol, Telnyx::Models::EmailWebhookRecipient::Kind, nil]
      optional :kind, enum: -> { Telnyx::EmailWebhookRecipient::Kind }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(email:, kind: nil, name: nil)
      #   @param email [String]
      #   @param kind [Symbol, Telnyx::Models::EmailWebhookRecipient::Kind]
      #   @param name [String, nil]

      # @see Telnyx::Models::EmailWebhookRecipient#kind
      module Kind
        extend Telnyx::Internal::Type::Enum

        TO = :to
        CC = :cc
        BCC = :bcc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
