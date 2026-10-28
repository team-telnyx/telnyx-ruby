# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::IPPools#list
      class IPPoolListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Email::IPPool>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Email::IPPool] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::Email::IPPool>]
      end
    end
  end
end
