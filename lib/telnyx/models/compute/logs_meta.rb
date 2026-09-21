# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      class LogsMeta < Telnyx::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Telnyx::Internal::Type::Boolean

        # @!attribute partial
        #
        #   @return [Boolean, nil]
        optional :partial, Telnyx::Internal::Type::Boolean

        # @!method initialize(has_more: nil, partial: nil)
        #   @param has_more [Boolean]
        #   @param partial [Boolean]
      end
    end
  end
end
