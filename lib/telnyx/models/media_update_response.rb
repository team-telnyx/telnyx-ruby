# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Media#update
    class MediaUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::MediaResource, nil]
      optional :data, -> { Telnyx::MediaResource }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::MediaResource]
    end
  end
end
