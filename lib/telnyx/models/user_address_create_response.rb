# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserAddresses#create
    class UserAddressCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::UserAddress, nil]
      optional :data, -> { Telnyx::UserAddress }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::UserAddress]
    end
  end
end
