# frozen_string_literal: true

module Telnyx
  module Models
    # The quality of the fax. The `ultra` settings provides the highest quality
    # available, but also present longer fax processing times. `ultra_light` is best
    # suited for images, wihle `ultra_dark` is best suited for text.
    module Quality
      extend Telnyx::Internal::Type::Enum

      NORMAL = :normal
      HIGH = :high
      VERY_HIGH = :very_high
      ULTRA_LIGHT = :ultra_light
      ULTRA_DARK = :ultra_dark

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
