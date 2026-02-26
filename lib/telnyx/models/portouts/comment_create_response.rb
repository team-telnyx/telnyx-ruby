# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Comments#create
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Portouts::PortoutComment, nil]
        optional :data, -> { Telnyx::Portouts::PortoutComment }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Portouts::PortoutComment]
      end
    end
  end
end
