# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#create
    class EnterprisePublicWrapped < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EnterprisePublic, nil]
      optional :data, -> { Telnyx::EnterprisePublic }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::EnterprisePublic]
    end
  end
end
