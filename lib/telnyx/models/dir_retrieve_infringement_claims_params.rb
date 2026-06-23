# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#retrieve_infringement_claims
    class DirRetrieveInfringementClaimsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute dir_id
      #
      #   @return [String]
      required :dir_id, String

      # @!attribute page_number
      #   1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Items per page. Maximum 250; values above are clamped to 250.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(dir_id:, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirRetrieveInfringementClaimsParams} for more details.
      #
      #   @param dir_id [String]
      #
      #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
