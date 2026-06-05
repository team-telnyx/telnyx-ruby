# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#create
    class EnterpriseCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EnterprisePublic]
      required :data, -> { Telnyx::EnterprisePublic }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EnterprisePublic]
    end
  end
end
