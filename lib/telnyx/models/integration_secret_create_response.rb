# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IntegrationSecrets#create
    class IntegrationSecretCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::IntegrationSecret]
      required :data, -> { Telnyx::IntegrationSecret }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::IntegrationSecret]
    end
  end
end
