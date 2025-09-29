# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Seti#retrieve_black_box_test_results
    class SetiRetrieveBlackBoxTestResultsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute black_box_tests
        #
        #   @return [Array<Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest>, nil]
        optional :black_box_tests,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest] }

        # @!attribute product
        #   The product associated with the black box test group.
        #
        #   @return [String, nil]
        optional :product, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!method initialize(black_box_tests: nil, product: nil, record_type: nil)
        #   @param black_box_tests [Array<Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest>]
        #
        #   @param product [String] The product associated with the black box test group.
        #
        #   @param record_type [String]

        class BlackBoxTest < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   The name of the black box test.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute result
          #   The average result of the black box test over the last hour.
          #
          #   @return [Float, nil]
          optional :result, Float

          # @!method initialize(id: nil, record_type: nil, result: nil)
          #   @param id [String] The name of the black box test.
          #
          #   @param record_type [String]
          #
          #   @param result [Float] The average result of the black box test over the last hour.
        end
      end
    end
  end
end
