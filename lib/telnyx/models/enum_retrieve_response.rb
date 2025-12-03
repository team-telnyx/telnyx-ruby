# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enum#retrieve
    module EnumRetrieveResponse
      extend Telnyx::Internal::Type::Union

      variant -> { Telnyx::Models::EnumRetrieveResponse::EnumListResponseArray }

      variant Telnyx::Internal::Type::Unknown

      module EnumListResponse
        extend Telnyx::Internal::Type::Union

        variant String

        variant Telnyx::Internal::Type::Unknown

        # @!method self.variants
        #   @return [Array(String, Object)]
      end

      # @!method self.variants
      #   @return [Array(Array<String, Object>, Object)]

      # @type [Telnyx::Internal::Type::Converter]
      EnumListResponseArray =
        Telnyx::Internal::Type::ArrayOf[union: -> { Telnyx::Models::EnumRetrieveResponse::EnumListResponse }]
    end
  end
end
