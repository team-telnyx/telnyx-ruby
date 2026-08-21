# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        # One recipient or a recipient array. Each recipient may be an email string or an
        # object with `email` and optional `name`.
        module InboxActionRecipientInput
          extend Telnyx::Internal::Type::Union

          variant String

          variant -> { Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress }

          variant -> { Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxActionEmailAddressInputArray }

          class InboxRecipientAddress < Telnyx::Internal::Type::BaseModel
            # @!attribute email
            #
            #   @return [String]
            required :email, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(email:, name: nil)
            #   @param email [String]
            #   @param name [String]
          end

          # @!method self.variants
          #   @return [Array(String, Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>)]

          # @type [Telnyx::Internal::Type::Converter]
          InboxActionEmailAddressInputArray =
            Telnyx::Internal::Type::ArrayOf[union: -> {
              Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput
            }]
        end
      end
    end
  end
end
