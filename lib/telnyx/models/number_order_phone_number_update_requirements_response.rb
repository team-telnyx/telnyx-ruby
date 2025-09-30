# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrderPhoneNumbers#update_requirements
    class NumberOrderPhoneNumberUpdateRequirementsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberOrderPhoneNumber, nil]
      optional :data, -> { Telnyx::NumberOrderPhoneNumber }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumberOrderPhoneNumber]
    end
  end
end
