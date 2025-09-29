# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Addresses#delete
    class AddressDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Address, nil]
      optional :data, -> { Telnyx::Address }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Address]
    end
  end
end
