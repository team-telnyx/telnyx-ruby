# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TelephonyCredentials#create
    class TelephonyCredentialCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TelephonyCredential, nil]
      optional :data, -> { Telnyx::TelephonyCredential }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TelephonyCredential]
    end
  end
end
