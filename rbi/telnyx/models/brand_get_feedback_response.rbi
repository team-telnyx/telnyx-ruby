# typed: strong

module Telnyx
  module Models
    class BrandGetFeedbackResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BrandGetFeedbackResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # ID of the brand being queried about
      sig { returns(String) }
      attr_accessor :brand_id

      # A list of reasons why brand creation/revetting didn't go as planned
      sig do
        returns(T::Array[Telnyx::Models::BrandGetFeedbackResponse::Category])
      end
      attr_accessor :category

      sig do
        params(
          brand_id: String,
          category:
            T::Array[Telnyx::Models::BrandGetFeedbackResponse::Category::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the brand being queried about
        brand_id:,
        # A list of reasons why brand creation/revetting didn't go as planned
        category:
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            category:
              T::Array[Telnyx::Models::BrandGetFeedbackResponse::Category]
          }
        )
      end
      def to_hash
      end

      class Category < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BrandGetFeedbackResponse::Category,
              Telnyx::Internal::AnyHash
            )
          end

        # One of `TAX_ID`, `STOCK_SYMBOL`, `GOVERNMENT_ENTITY`, `NONPROFIT`, and `OTHERS`
        sig { returns(String) }
        attr_accessor :id

        # Long-form description of the feedback with additional information
        sig { returns(String) }
        attr_accessor :description

        # Human-readable version of the `id` field
        sig { returns(String) }
        attr_accessor :display_name

        # List of relevant fields in the originally-submitted brand json
        sig { returns(T::Array[String]) }
        attr_accessor :fields

        sig do
          params(
            id: String,
            description: String,
            display_name: String,
            fields: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # One of `TAX_ID`, `STOCK_SYMBOL`, `GOVERNMENT_ENTITY`, `NONPROFIT`, and `OTHERS`
          id:,
          # Long-form description of the feedback with additional information
          description:,
          # Human-readable version of the `id` field
          display_name:,
          # List of relevant fields in the originally-submitted brand json
          fields:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: String,
              display_name: String,
              fields: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
