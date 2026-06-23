# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#retrieve
    class DirWrapped < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DirAPI]
      required :data, -> { Telnyx::DirAPI }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::DirAPI]
    end
  end
end
