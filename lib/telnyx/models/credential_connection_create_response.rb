# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CredentialConnections#create
    class CredentialConnectionCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CredentialConnection, nil]
      optional :data, -> { Telnyx::CredentialConnection }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CredentialConnection]
    end
  end
end
