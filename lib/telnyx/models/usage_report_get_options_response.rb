# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UsageReports#get_options
    class UsageReportGetOptionsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Collection of product description
      #
      #   @return [Array<Telnyx::Models::UsageReportGetOptionsResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::UsageReportGetOptionsResponse::Data] }

      # @!method initialize(data: nil)
      #   An object following one of the schemas published in
      #   https://developers.telnyx.com/docs/api/v2/detail-records
      #
      #   @param data [Array<Telnyx::Models::UsageReportGetOptionsResponse::Data>] Collection of product description

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute product
        #   Telnyx Product
        #
        #   @return [String, nil]
        optional :product, String

        # @!attribute product_dimensions
        #   Telnyx Product Dimensions
        #
        #   @return [Array<String>, nil]
        optional :product_dimensions, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute product_metrics
        #   Telnyx Product Metrics
        #
        #   @return [Array<String>, nil]
        optional :product_metrics, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute record_types
        #   Subproducts if applicable
        #
        #   @return [Array<Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType>, nil]
        optional :record_types,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType] }

        # @!method initialize(product: nil, product_dimensions: nil, product_metrics: nil, record_types: nil)
        #   An object following one of the schemas published in
        #   https://developers.telnyx.com/docs/api/v2/detail-records
        #
        #   @param product [String] Telnyx Product
        #
        #   @param product_dimensions [Array<String>] Telnyx Product Dimensions
        #
        #   @param product_metrics [Array<String>] Telnyx Product Metrics
        #
        #   @param record_types [Array<Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType>] Subproducts if applicable

        class RecordType < Telnyx::Internal::Type::BaseModel
          # @!attribute product_dimensions
          #   Telnyx Product Dimensions
          #
          #   @return [Array<String>, nil]
          optional :product_dimensions, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute product_metrics
          #   Telnyx Product Metrics
          #
          #   @return [Array<String>, nil]
          optional :product_metrics, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute record_type
          #   Telnyx Product type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!method initialize(product_dimensions: nil, product_metrics: nil, record_type: nil)
          #   An object following one of the schemas published in
          #   https://developers.telnyx.com/docs/api/v2/detail-records
          #
          #   @param product_dimensions [Array<String>] Telnyx Product Dimensions
          #
          #   @param product_metrics [Array<String>] Telnyx Product Metrics
          #
          #   @param record_type [String] Telnyx Product type
        end
      end
    end
  end
end
