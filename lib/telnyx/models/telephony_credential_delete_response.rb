# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TelephonyCredentials#delete
    class TelephonyCredentialDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TelephonyCredential, nil]
      optional :data, -> { Telnyx::TelephonyCredential }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TelephonyCredential]
    end
  end
end
