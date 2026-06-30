# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::References#create
      class ReferenceList < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Dir::Reference>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Dir::Reference] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::Dir::Reference>]
      end
    end
  end
end
