# typed: strong

module Telnyx
  module Models
    class SetiRetrieveBlackBoxTestResultsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest
              ]
            )
          )
        end
        attr_reader :black_box_tests

        sig do
          params(
            black_box_tests:
              T::Array[
                Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest::OrHash
              ]
          ).void
        end
        attr_writer :black_box_tests

        # The product associated with the black box test group.
        sig { returns(T.nilable(String)) }
        attr_reader :product

        sig { params(product: String).void }
        attr_writer :product

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            black_box_tests:
              T::Array[
                Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest::OrHash
              ],
            product: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          black_box_tests: nil,
          # The product associated with the black box test group.
          product: nil,
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              black_box_tests:
                T::Array[
                  Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest
                ],
              product: String,
              record_type: String
            }
          )
        end
        def to_hash
        end

        class BlackBoxTest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data::BlackBoxTest,
                Telnyx::Internal::AnyHash
              )
            end

          # The name of the black box test.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # The average result of the black box test over the last hour.
          sig { returns(T.nilable(Float)) }
          attr_reader :result

          sig { params(result: Float).void }
          attr_writer :result

          sig do
            params(id: String, record_type: String, result: Float).returns(
              T.attached_class
            )
          end
          def self.new(
            # The name of the black box test.
            id: nil,
            record_type: nil,
            # The average result of the black box test over the last hour.
            result: nil
          )
          end

          sig do
            override.returns({ id: String, record_type: String, result: Float })
          end
          def to_hash
          end
        end
      end
    end
  end
end
