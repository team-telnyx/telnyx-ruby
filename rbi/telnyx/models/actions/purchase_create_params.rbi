# typed: strong

module Telnyx
  module Models
    module Actions
      class PurchaseCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Actions::PurchaseCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The amount of eSIMs to be purchased.
        sig { returns(Integer) }
        attr_accessor :amount

        # Type of product to be purchased, specify "whitelabel" to use a custom SPN
        sig { returns(T.nilable(String)) }
        attr_reader :product

        sig { params(product: String).void }
        attr_writer :product

        # The group SIMCardGroup identification. This attribute can be <code>null</code>
        # when it's present in an associated resource.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_group_id

        sig { params(sim_card_group_id: String).void }
        attr_writer :sim_card_group_id

        # Status on which the SIM cards will be set after being successfully registered.
        sig do
          returns(
            T.nilable(Telnyx::Actions::PurchaseCreateParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Actions::PurchaseCreateParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Searchable tags associated with the SIM cards
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Service Provider Name (SPN) for the Whitelabel eSIM product. It will be
        # displayed as the mobile service name by operating systems of smartphones. This
        # parameter must only contain letters, numbers and whitespaces.
        sig { returns(T.nilable(String)) }
        attr_reader :whitelabel_name

        sig { params(whitelabel_name: String).void }
        attr_writer :whitelabel_name

        sig do
          params(
            amount: Integer,
            product: String,
            sim_card_group_id: String,
            status: Telnyx::Actions::PurchaseCreateParams::Status::OrSymbol,
            tags: T::Array[String],
            whitelabel_name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The amount of eSIMs to be purchased.
          amount:,
          # Type of product to be purchased, specify "whitelabel" to use a custom SPN
          product: nil,
          # The group SIMCardGroup identification. This attribute can be <code>null</code>
          # when it's present in an associated resource.
          sim_card_group_id: nil,
          # Status on which the SIM cards will be set after being successfully registered.
          status: nil,
          # Searchable tags associated with the SIM cards
          tags: nil,
          # Service Provider Name (SPN) for the Whitelabel eSIM product. It will be
          # displayed as the mobile service name by operating systems of smartphones. This
          # parameter must only contain letters, numbers and whitespaces.
          whitelabel_name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              product: String,
              sim_card_group_id: String,
              status: Telnyx::Actions::PurchaseCreateParams::Status::OrSymbol,
              tags: T::Array[String],
              whitelabel_name: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Status on which the SIM cards will be set after being successfully registered.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Actions::PurchaseCreateParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(
              :enabled,
              Telnyx::Actions::PurchaseCreateParams::Status::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::Actions::PurchaseCreateParams::Status::TaggedSymbol
            )
          STANDBY =
            T.let(
              :standby,
              Telnyx::Actions::PurchaseCreateParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Actions::PurchaseCreateParams::Status::TaggedSymbol
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
