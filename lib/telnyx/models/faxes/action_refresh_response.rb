# frozen_string_literal: true

module Telnyx
  module Models
    module Faxes
      # @see Telnyx::Resources::Faxes::Actions#refresh
      class ActionRefreshResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [String, nil]
        optional :result, String

        # @!method initialize(result: nil)
        #   @param result [String]
      end
    end
  end
end
