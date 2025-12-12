# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Number10dlc#get_enum
    module Number10dlcGetEnumResponse
      extend Telnyx::Internal::Type::Union

      variant -> { Telnyx::Models::Number10dlcGetEnumResponse::StringArray }

      variant -> { Telnyx::Models::Number10dlcGetEnumResponse::EnumObjectListResponseArray }

      variant -> { Telnyx::Models::Number10dlcGetEnumResponse::EnumObjectToStringResponseMap }

      variant -> { Telnyx::Models::Number10dlcGetEnumResponse::EnumObjecToObjecttResponseMap }

      variant -> { Telnyx::Models::Number10dlcGetEnumResponse::EnumPaginatedResponse }

      class EnumPaginatedResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute page
        #
        #   @return [Integer]
        required :page, Integer

        # @!attribute records
        #
        #   @return [Array<Hash{Symbol=>Object}>]
        required :records,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute total_records
        #
        #   @return [Integer]
        required :total_records, Integer, api_name: :totalRecords

        # @!method initialize(page:, records:, total_records:)
        #   @param page [Integer]
        #   @param records [Array<Hash{Symbol=>Object}>]
        #   @param total_records [Integer]
      end

      # @!method self.variants
      #   @return [Array(Array<String>, Array<Hash{Symbol=>Object}>, Hash{Symbol=>Object}, Hash{Symbol=>Object}, Telnyx::Models::Number10dlcGetEnumResponse::EnumPaginatedResponse)]

      # @type [Telnyx::Internal::Type::Converter]
      StringArray = Telnyx::Internal::Type::ArrayOf[String]

      # @type [Telnyx::Internal::Type::Converter]
      EnumObjectListResponseArray =
        Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

      # @type [Telnyx::Internal::Type::Converter]
      EnumObjectToStringResponseMap = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @type [Telnyx::Internal::Type::Converter]
      EnumObjecToObjecttResponseMap = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
    end
  end
end
