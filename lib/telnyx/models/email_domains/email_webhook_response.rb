# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # @see Telnyx::Resources::EmailDomains::Webhooks#create
      class EmailWebhookResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailDomains::EmailWebhook]
        required :data, -> { Telnyx::EmailDomains::EmailWebhook }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailDomains::EmailWebhook]
      end
    end
  end
end
