# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Faxes#retrieve
    class FaxRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Fax, nil]
      optional :data, -> { Telnyx::Fax }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Fax]
    end
  end
end
