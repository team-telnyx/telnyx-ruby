# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::Comments#create
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Dir::DirComment]
        required :data, -> { Telnyx::Dir::DirComment }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Dir::DirComment]
      end
    end
  end
end
