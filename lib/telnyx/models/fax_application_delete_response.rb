# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::FaxApplications#delete
    class FaxApplicationDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::FaxApplication, nil]
      optional :data, -> { Telnyx::FaxApplication }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::FaxApplication]
    end
  end
end
