# frozen_string_literal: true

module Telnyx
  module Models
    class Cursor < Telnyx::Internal::Type::BaseModel
      # @!attribute after
      #   Opaque identifier of next page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Opaque identifier of previous page.
      #
      #   @return [String, nil]
      optional :before, String

      # @!method initialize(after: nil, before: nil)
      #   @param after [String] Opaque identifier of next page.
      #
      #   @param before [String] Opaque identifier of previous page.
    end
  end
end
