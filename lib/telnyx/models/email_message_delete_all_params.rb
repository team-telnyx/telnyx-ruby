# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#delete_all
    class EmailMessageDeleteAllParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute address
      #   Sender or recipient address to delete. Matching is trimmed and case-insensitive.
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailMessageDeleteAllParams} for more details.
      #
      #   @param address [String] Sender or recipient address to delete. Matching is trimmed and case-insensitive.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
