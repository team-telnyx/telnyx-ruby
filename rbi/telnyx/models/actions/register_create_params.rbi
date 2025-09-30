# typed: strong

module Telnyx
  module Models
    module Actions
      class RegisterCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Actions::RegisterCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :registration_codes

        # The group SIMCardGroup identification. This attribute can be <code>null</code>
        # when it's present in an associated resource.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_group_id

        sig { params(sim_card_group_id: String).void }
        attr_writer :sim_card_group_id

        # Status on which the SIM card will be set after being successful registered.
        sig do
          returns(
            T.nilable(Telnyx::Actions::RegisterCreateParams::Status::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Actions::RegisterCreateParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Searchable tags associated with the SIM card
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig do
          params(
            registration_codes: T::Array[String],
            sim_card_group_id: String,
            status: Telnyx::Actions::RegisterCreateParams::Status::OrSymbol,
            tags: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          registration_codes:,
          # The group SIMCardGroup identification. This attribute can be <code>null</code>
          # when it's present in an associated resource.
          sim_card_group_id: nil,
          # Status on which the SIM card will be set after being successful registered.
          status: nil,
          # Searchable tags associated with the SIM card
          tags: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              registration_codes: T::Array[String],
              sim_card_group_id: String,
              status: Telnyx::Actions::RegisterCreateParams::Status::OrSymbol,
              tags: T::Array[String],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Status on which the SIM card will be set after being successful registered.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Actions::RegisterCreateParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(
              :enabled,
              Telnyx::Actions::RegisterCreateParams::Status::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::Actions::RegisterCreateParams::Status::TaggedSymbol
            )
          STANDBY =
            T.let(
              :standby,
              Telnyx::Actions::RegisterCreateParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Actions::RegisterCreateParams::Status::TaggedSymbol
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
