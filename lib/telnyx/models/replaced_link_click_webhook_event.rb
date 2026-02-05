# frozen_string_literal: true

module Telnyx
  module Models
    class ReplacedLinkClickWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ReplacedLinkClick, nil]
      optional :data, -> { Telnyx::ReplacedLinkClick }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ReplacedLinkClick]
    end
  end
end
