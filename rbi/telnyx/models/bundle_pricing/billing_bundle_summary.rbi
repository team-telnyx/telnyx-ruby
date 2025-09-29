# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class BillingBundleSummary < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BundlePricing::BillingBundleSummary,
              Telnyx::Internal::AnyHash
            )
          end

        # Bundle's ID, this is used to identify the bundle in the API.
        sig { returns(String) }
        attr_accessor :id

        # Bundle's cost code, this is used to identify the bundle in the billing system.
        sig { returns(String) }
        attr_accessor :cost_code

        # Date the bundle was created.
        sig { returns(Date) }
        attr_accessor :created_at

        # Available to all customers or only to specific customers.
        sig { returns(T::Boolean) }
        attr_accessor :is_public

        # Bundle's name, this is used to identify the bundle in the UI.
        sig { returns(String) }
        attr_accessor :name

        # Bundle's currency code.
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Monthly recurring charge price.
        sig { returns(T.nilable(Float)) }
        attr_reader :mrc_price

        sig { params(mrc_price: Float).void }
        attr_writer :mrc_price

        # Slugified version of the bundle's name.
        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :specs

        sig { params(specs: T::Array[String]).void }
        attr_writer :specs

        sig do
          params(
            id: String,
            cost_code: String,
            created_at: Date,
            is_public: T::Boolean,
            name: String,
            currency: String,
            mrc_price: Float,
            slug: String,
            specs: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Bundle's ID, this is used to identify the bundle in the API.
          id:,
          # Bundle's cost code, this is used to identify the bundle in the billing system.
          cost_code:,
          # Date the bundle was created.
          created_at:,
          # Available to all customers or only to specific customers.
          is_public:,
          # Bundle's name, this is used to identify the bundle in the UI.
          name:,
          # Bundle's currency code.
          currency: nil,
          # Monthly recurring charge price.
          mrc_price: nil,
          # Slugified version of the bundle's name.
          slug: nil,
          specs: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cost_code: String,
              created_at: Date,
              is_public: T::Boolean,
              name: String,
              currency: String,
              mrc_price: Float,
              slug: String,
              specs: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
