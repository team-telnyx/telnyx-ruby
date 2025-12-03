# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enumeration#retrieve
    module EnumerationRetrieveResponse
      extend Telnyx::Internal::Type::Union

      variant -> { Telnyx::Models::EnumerationRetrieveResponse::StringArray }

      variant Telnyx::Internal::Type::Unknown

      # @!method self.variants
      #   @return [Array(Array<String>, Object)]

      # @type [Telnyx::Internal::Type::Converter]
      StringArray = Telnyx::Internal::Type::ArrayOf[String]
    end
  end
end
