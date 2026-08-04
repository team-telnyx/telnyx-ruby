# frozen_string_literal: true

module Telnyx
  module Models
    module EmailAddressInput
      extend Telnyx::Internal::Type::Union

      variant String

      variant -> { Telnyx::EmailInboxes::EmailAddress }

      # @!method self.variants
      #   @return [Array(String, Telnyx::Models::EmailInboxes::EmailAddress)]
    end
  end
end
