# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ShortCodes#update
    class ShortCodeUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ShortCode, nil]
      optional :data, -> { Telnyx::ShortCode }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ShortCode]
    end
  end
end
