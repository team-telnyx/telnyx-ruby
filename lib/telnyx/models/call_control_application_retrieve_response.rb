# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallControlApplications#retrieve
    class CallControlApplicationRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallControlApplication, nil]
      optional :data, -> { Telnyx::CallControlApplication }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallControlApplication]
    end
  end
end
