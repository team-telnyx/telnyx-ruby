# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::List#retrieve_all
    class ListRetrieveAllResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::ListRetrieveAllResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ListRetrieveAllResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::ListRetrieveAllResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute number_of_channels
        #
        #   @return [Integer, nil]
        optional :number_of_channels, Integer

        # @!attribute numbers
        #
        #   @return [Array<Telnyx::Models::ListRetrieveAllResponse::Data::Number>, nil]
        optional :numbers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ListRetrieveAllResponse::Data::Number] }

        # @!attribute zone_id
        #
        #   @return [String, nil]
        optional :zone_id, String

        # @!attribute zone_name
        #
        #   @return [String, nil]
        optional :zone_name, String

        # @!method initialize(number_of_channels: nil, numbers: nil, zone_id: nil, zone_name: nil)
        #   @param number_of_channels [Integer]
        #   @param numbers [Array<Telnyx::Models::ListRetrieveAllResponse::Data::Number>]
        #   @param zone_id [String]
        #   @param zone_name [String]

        class Number < Telnyx::Internal::Type::BaseModel
          # @!attribute country
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute number
          #
          #   @return [String, nil]
          optional :number, String

          # @!method initialize(country: nil, number: nil)
          #   @param country [String]
          #   @param number [String]
        end
      end
    end
  end
end
