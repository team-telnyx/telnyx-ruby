# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # @see Telnyx::Resources::Messaging10dlc::Brand#get_feedback
      class BrandGetFeedbackResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute brand_id
        #   ID of the brand being queried about
        #
        #   @return [String]
        required :brand_id, String, api_name: :brandId

        # @!attribute category
        #   A list of reasons why brand creation/revetting didn't go as planned
        #
        #   @return [Array<Telnyx::Models::Messaging10dlc::BrandGetFeedbackResponse::Category>]
        required :category,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Messaging10dlc::BrandGetFeedbackResponse::Category] }

        # @!method initialize(brand_id:, category:)
        #   @param brand_id [String] ID of the brand being queried about
        #
        #   @param category [Array<Telnyx::Models::Messaging10dlc::BrandGetFeedbackResponse::Category>] A list of reasons why brand creation/revetting didn't go as planned

        class Category < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   One of `TAX_ID`, `STOCK_SYMBOL`, `GOVERNMENT_ENTITY`, `NONPROFIT`, and `OTHERS`
          #
          #   @return [String]
          required :id, String

          # @!attribute description
          #   Long-form description of the feedback with additional information
          #
          #   @return [String]
          required :description, String

          # @!attribute display_name
          #   Human-readable version of the `id` field
          #
          #   @return [String]
          required :display_name, String, api_name: :displayName

          # @!attribute fields
          #   List of relevant fields in the originally-submitted brand json
          #
          #   @return [Array<String>]
          required :fields, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(id:, description:, display_name:, fields:)
          #   @param id [String] One of `TAX_ID`, `STOCK_SYMBOL`, `GOVERNMENT_ENTITY`, `NONPROFIT`, and `OTHERS`
          #
          #   @param description [String] Long-form description of the feedback with additional information
          #
          #   @param display_name [String] Human-readable version of the `id` field
          #
          #   @param fields [Array<String>] List of relevant fields in the originally-submitted brand json
        end
      end
    end
  end
end
