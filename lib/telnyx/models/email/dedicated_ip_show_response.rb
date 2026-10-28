# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::DedicatedIPs#create
      class DedicatedIPShowResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A dedicated sending IP address owned by the account.
        #
        #   @return [Telnyx::Models::Email::DedicatedIP]
        required :data, -> { Telnyx::Email::DedicatedIP }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Email::DedicatedIP] A dedicated sending IP address owned by the account.
      end
    end
  end
end
