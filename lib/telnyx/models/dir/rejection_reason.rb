# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      class RejectionReason < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute message
        #   Customer-visible free-text comment from the Telnyx vetting team. Only the first
        #   entry of `rejection_reasons` carries this; the rest are `null`.
        #
        #   @return [String, nil]
        optional :message, String, nil?: true

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(code: nil, detail: nil, message: nil, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::RejectionReason} for more details.
        #
        #   @param code [String]
        #
        #   @param detail [String]
        #
        #   @param message [String, nil] Customer-visible free-text comment from the Telnyx vetting team. Only the first
        #
        #   @param title [String]
      end
    end
  end
end
