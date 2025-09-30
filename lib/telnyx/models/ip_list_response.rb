# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPs#list
    class IPListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::IP>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::IP] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::IP>]
    end
  end
end
