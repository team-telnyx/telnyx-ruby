# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class BillingBundleRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Bundle's ID, this is used to identify the bundle in the API.
          sig { returns(String) }
          attr_accessor :id

          # If that bundle is active or not.
          sig { returns(T::Boolean) }
          attr_accessor :active

          sig do
            returns(
              T::Array[
                Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit
              ]
            )
          end
          attr_accessor :bundle_limits

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

          # Slugified version of the bundle's name.
          sig { returns(T.nilable(String)) }
          attr_reader :slug

          sig { params(slug: String).void }
          attr_writer :slug

          sig do
            params(
              id: String,
              active: T::Boolean,
              bundle_limits:
                T::Array[
                  Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::OrHash
                ],
              cost_code: String,
              created_at: Date,
              is_public: T::Boolean,
              name: String,
              slug: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Bundle's ID, this is used to identify the bundle in the API.
            id:,
            # If that bundle is active or not.
            active:,
            bundle_limits:,
            # Bundle's cost code, this is used to identify the bundle in the billing system.
            cost_code:,
            # Date the bundle was created.
            created_at:,
            # Available to all customers or only to specific customers.
            is_public:,
            # Bundle's name, this is used to identify the bundle in the UI.
            name:,
            # Slugified version of the bundle's name.
            slug: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                active: T::Boolean,
                bundle_limits:
                  T::Array[
                    Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit
                  ],
                cost_code: String,
                created_at: Date,
                is_public: T::Boolean,
                name: String,
                slug: String
              }
            )
          end
          def to_hash
          end

          class BundleLimit < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Date) }
            attr_accessor :created_at

            sig { returns(String) }
            attr_accessor :metric

            sig { returns(String) }
            attr_accessor :service

            sig { returns(Date) }
            attr_accessor :updated_at

            sig { returns(T.nilable(String)) }
            attr_reader :billing_service

            sig { params(billing_service: String).void }
            attr_writer :billing_service

            # Use country_iso instead
            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { params(country: String).void }
            attr_writer :country

            sig { returns(T.nilable(Integer)) }
            attr_reader :country_code

            sig { params(country_code: Integer).void }
            attr_writer :country_code

            sig { returns(T.nilable(String)) }
            attr_reader :country_iso

            sig { params(country_iso: String).void }
            attr_writer :country_iso

            # An enumeration.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction::TaggedSymbol
                )
              )
            end
            attr_reader :direction

            sig do
              params(
                direction:
                  Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction::OrSymbol
              ).void
            end
            attr_writer :direction

            sig { returns(T.nilable(Integer)) }
            attr_reader :limit

            sig { params(limit: Integer).void }
            attr_writer :limit

            sig { returns(T.nilable(String)) }
            attr_reader :rate

            sig { params(rate: String).void }
            attr_writer :rate

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :types

            sig { params(types: T::Array[String]).void }
            attr_writer :types

            sig do
              params(
                id: String,
                created_at: Date,
                metric: String,
                service: String,
                updated_at: Date,
                billing_service: String,
                country: String,
                country_code: Integer,
                country_iso: String,
                direction:
                  Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction::OrSymbol,
                limit: Integer,
                rate: String,
                types: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              created_at:,
              metric:,
              service:,
              updated_at:,
              billing_service: nil,
              # Use country_iso instead
              country: nil,
              country_code: nil,
              country_iso: nil,
              # An enumeration.
              direction: nil,
              limit: nil,
              rate: nil,
              types: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Date,
                  metric: String,
                  service: String,
                  updated_at: Date,
                  billing_service: String,
                  country: String,
                  country_code: Integer,
                  country_iso: String,
                  direction:
                    Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction::TaggedSymbol,
                  limit: Integer,
                  rate: String,
                  types: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # An enumeration.
            module Direction
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INBOUND =
                T.let(
                  :inbound,
                  Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction::TaggedSymbol
                )
              OUTBOUND =
                T.let(
                  :outbound,
                  Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
