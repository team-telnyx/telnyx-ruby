# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbers#retrieve
    class PhoneNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumbersPhoneNumberDetailed, nil]
      optional :data, -> { Telnyx::NumbersPhoneNumberDetailed }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumbersPhoneNumberDetailed]
    end
  end
end
