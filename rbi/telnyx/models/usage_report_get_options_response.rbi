# typed: strong

module Telnyx
  module Models
    class UsageReportGetOptionsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::UsageReportGetOptionsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Collection of product description
      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::UsageReportGetOptionsResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::UsageReportGetOptionsResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      # An object following one of the schemas published in
      # https://developers.telnyx.com/docs/api/v2/detail-records
      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::UsageReportGetOptionsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # Collection of product description
        data: nil
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::UsageReportGetOptionsResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::UsageReportGetOptionsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Telnyx Product
        sig { returns(T.nilable(String)) }
        attr_reader :product

        sig { params(product: String).void }
        attr_writer :product

        # Telnyx Product Dimensions
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :product_dimensions

        sig { params(product_dimensions: T::Array[String]).void }
        attr_writer :product_dimensions

        # Telnyx Product Metrics
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :product_metrics

        sig { params(product_metrics: T::Array[String]).void }
        attr_writer :product_metrics

        # Subproducts if applicable
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType
              ]
            )
          )
        end
        attr_reader :record_types

        sig do
          params(
            record_types:
              T::Array[
                Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType::OrHash
              ]
          ).void
        end
        attr_writer :record_types

        # An object following one of the schemas published in
        # https://developers.telnyx.com/docs/api/v2/detail-records
        sig do
          params(
            product: String,
            product_dimensions: T::Array[String],
            product_metrics: T::Array[String],
            record_types:
              T::Array[
                Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Telnyx Product
          product: nil,
          # Telnyx Product Dimensions
          product_dimensions: nil,
          # Telnyx Product Metrics
          product_metrics: nil,
          # Subproducts if applicable
          record_types: nil
        )
        end

        sig do
          override.returns(
            {
              product: String,
              product_dimensions: T::Array[String],
              product_metrics: T::Array[String],
              record_types:
                T::Array[
                  Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType
                ]
            }
          )
        end
        def to_hash
        end

        class RecordType < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::UsageReportGetOptionsResponse::Data::RecordType,
                Telnyx::Internal::AnyHash
              )
            end

          # Telnyx Product Dimensions
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :product_dimensions

          sig { params(product_dimensions: T::Array[String]).void }
          attr_writer :product_dimensions

          # Telnyx Product Metrics
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :product_metrics

          sig { params(product_metrics: T::Array[String]).void }
          attr_writer :product_metrics

          # Telnyx Product type
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # An object following one of the schemas published in
          # https://developers.telnyx.com/docs/api/v2/detail-records
          sig do
            params(
              product_dimensions: T::Array[String],
              product_metrics: T::Array[String],
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Telnyx Product Dimensions
            product_dimensions: nil,
            # Telnyx Product Metrics
            product_metrics: nil,
            # Telnyx Product type
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                product_dimensions: T::Array[String],
                product_metrics: T::Array[String],
                record_type: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
