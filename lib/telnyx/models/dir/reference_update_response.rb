# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::References#update
      class ReferenceUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A reference (business or financial) on a DIR, in the customer-facing shape. No
        #   internal identifiers are exposed.
        #
        #   @return [Telnyx::Models::Dir::Reference]
        required :data, -> { Telnyx::Dir::Reference }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::ReferenceUpdateResponse} for more details.
        #
        #   @param data [Telnyx::Models::Dir::Reference] A reference (business or financial) on a DIR, in the customer-facing shape. No i
      end
    end
  end
end
