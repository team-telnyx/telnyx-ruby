# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePushCredentials#create
    class PushCredentialResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PushCredential, nil]
      optional :data, -> { Telnyx::PushCredential }

      # @!method initialize(data: nil)
      #   Success response with details about a push credential
      #
      #   @param data [Telnyx::Models::PushCredential]
    end
  end
end
