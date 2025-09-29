# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbers#retrieve
    class PhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PhoneNumberDetailed, nil]
      optional :data, -> { Telnyx::PhoneNumberDetailed }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PhoneNumberDetailed]
    end
  end
end
