# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AuthenticationProviders#update
    class AuthenticationProviderUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::AuthenticationProvider, nil]
      optional :data, -> { Telnyx::AuthenticationProvider }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::AuthenticationProvider]
    end
  end
end
