# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UsageReports#get_options
    class UsageReportGetOptionsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product
      #   Options (dimensions and metrics) for a given product. If none specified, all
      #   products will be returned.
      #
      #   @return [String, nil]
      optional :product, String

      # @!attribute authorization_bearer
      #   Authenticates the request with your Telnyx API V2 KEY
      #
      #   @return [String, nil]
      optional :authorization_bearer, String

      # @!method initialize(product: nil, authorization_bearer: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UsageReportGetOptionsParams} for more details.
      #
      #   @param product [String] Options (dimensions and metrics) for a given product. If none specified, all pro
      #
      #   @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
