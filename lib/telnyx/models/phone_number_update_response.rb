# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbers#update
    class PhoneNumberUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumbersPhoneNumberDetailed, nil]
      optional :data, -> { Telnyx::NumbersPhoneNumberDetailed }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumbersPhoneNumberDetailed]
    end
  end
end
