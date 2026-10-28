# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::IPPools#create
      class IPPoolShowResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   An account-scoped pool of dedicated IPs. Mail uses a pool only when the pool is
        #   scoped to the sending domain (`domain_id`) or is the account default
        #   (`is_default`).
        #
        #   @return [Telnyx::Models::Email::IPPool]
        required :data, -> { Telnyx::Email::IPPool }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::IPPoolShowResponse} for more details.
        #
        #   @param data [Telnyx::Models::Email::IPPool] An account-scoped pool of dedicated IPs. Mail uses a pool only when the pool is
      end
    end
  end
end
