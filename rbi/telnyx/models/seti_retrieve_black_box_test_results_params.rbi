# typed: strong

module Telnyx
  module Models
    class SetiRetrieveBlackBoxTestResultsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SetiRetrieveBlackBoxTestResultsParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[product]
      sig do
        returns(
          T.nilable(Telnyx::SetiRetrieveBlackBoxTestResultsParams::Filter)
        )
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::SetiRetrieveBlackBoxTestResultsParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::SetiRetrieveBlackBoxTestResultsParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[product]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::SetiRetrieveBlackBoxTestResultsParams::Filter,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SetiRetrieveBlackBoxTestResultsParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter results for a specific product.
        sig { returns(T.nilable(String)) }
        attr_reader :product

        sig { params(product: String).void }
        attr_writer :product

        # Consolidated filter parameter (deepObject style). Originally: filter[product]
        sig { params(product: String).returns(T.attached_class) }
        def self.new(
          # Filter results for a specific product.
          product: nil
        )
        end

        sig { override.returns({ product: String }) }
        def to_hash
        end
      end
    end
  end
end
