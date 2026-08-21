# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        # Email address accepted by inbox message actions, as a string or an object with
        # `email` and optional `name`.
        module InboxActionEmailAddressInput
          extend Telnyx::Internal::Type::Union

          variant String

          variant -> { Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress }

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
          #   @return [Array(String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress)]
        end
      end
    end
  end
end
