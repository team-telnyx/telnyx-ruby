# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserAddresses#retrieve
    class UserAddressRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::UserAddressesUserAddress, nil]
      optional :data, -> { Telnyx::UserAddressesUserAddress }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::UserAddressesUserAddress]
    end
  end
end
