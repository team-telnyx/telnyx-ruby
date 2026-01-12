# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePhoneNumbers#update
    class MobilePhoneNumberUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MobilePhoneNumber, nil]
      optional :data, -> { Telnyx::MobilePhoneNumber }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MobilePhoneNumber]
    end
  end
end
