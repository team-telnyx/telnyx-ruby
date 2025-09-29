# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifiedNumbers#create
    class VerifiedNumberCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute phone_number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute verification_method
      #
      #   @return [String, nil]
      optional :verification_method, String

      # @!method initialize(phone_number: nil, verification_method: nil)
      #   @param phone_number [String]
      #   @param verification_method [String]
    end
  end
end
