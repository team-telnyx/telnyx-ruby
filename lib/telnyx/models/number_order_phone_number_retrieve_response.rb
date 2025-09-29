# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrderPhoneNumbers#retrieve
    class NumberOrderPhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberOrderPhoneNumber, nil]
      optional :data, -> { Telnyx::NumberOrderPhoneNumber }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumberOrderPhoneNumber]
    end
  end
end
