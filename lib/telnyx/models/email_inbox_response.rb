# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailInboxes#create
    class EmailInboxResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EmailInbox]
      required :data, -> { Telnyx::EmailInbox }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EmailInbox]
    end
  end
end
