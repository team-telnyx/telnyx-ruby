# frozen_string_literal: true

module Telnyx
  module Models
    module EmailMessages
      # @see Telnyx::Resources::EmailMessages::Recipients#retrieve
      class RecipientRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailMessages::EmailRecipient]
        required :data, -> { Telnyx::EmailMessages::EmailRecipient }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailMessages::EmailRecipient]
      end
    end
  end
end
