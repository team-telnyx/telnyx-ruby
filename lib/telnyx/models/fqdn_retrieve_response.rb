# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Fqdns#retrieve
    class FqdnRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Fqdn, nil]
      optional :data, -> { Telnyx::Fqdn }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Fqdn]
    end
  end
end
