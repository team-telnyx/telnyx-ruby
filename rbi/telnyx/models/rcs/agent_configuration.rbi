# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentConfiguration < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentConfiguration, Telnyx::Internal::AnyHash)
          end

        # Basic agent identity and contact information. At least one complete phone,
        # website, or email contact is required.
        sig do
          returns(
            T.any(
              Telnyx::Rcs::AgentConfiguration::Basics::UnionMember0,
              Telnyx::Rcs::AgentConfiguration::Basics::UnionMember1,
              Telnyx::Rcs::AgentConfiguration::Basics::UnionMember2
            )
          )
        end
        attr_accessor :basics

        sig { returns(T.nilable(Telnyx::Rcs::AgentCampaignConfiguration)) }
        attr_reader :campaign

        sig do
          params(
            campaign: T.nilable(Telnyx::Rcs::AgentCampaignConfiguration::OrHash)
          ).void
        end
        attr_writer :campaign

        sig { returns(T.nilable(Telnyx::Rcs::AgentTestingConfiguration)) }
        attr_reader :testing

        sig do
          params(
            testing: T.nilable(Telnyx::Rcs::AgentTestingConfiguration::OrHash)
          ).void
        end
        attr_writer :testing

        sig do
          params(
            basics:
              T.any(
                Telnyx::Rcs::AgentConfiguration::Basics::UnionMember0::OrHash,
                Telnyx::Rcs::AgentConfiguration::Basics::UnionMember1::OrHash,
                Telnyx::Rcs::AgentConfiguration::Basics::UnionMember2::OrHash
              ),
            campaign:
              T.nilable(Telnyx::Rcs::AgentCampaignConfiguration::OrHash),
            testing: T.nilable(Telnyx::Rcs::AgentTestingConfiguration::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # Basic agent identity and contact information. At least one complete phone,
          # website, or email contact is required.
          basics:,
          campaign: nil,
          testing: nil
        )
        end

        sig do
          override.returns(
            {
              basics:
                T.any(
                  Telnyx::Rcs::AgentConfiguration::Basics::UnionMember0,
                  Telnyx::Rcs::AgentConfiguration::Basics::UnionMember1,
                  Telnyx::Rcs::AgentConfiguration::Basics::UnionMember2
                ),
              campaign: T.nilable(Telnyx::Rcs::AgentCampaignConfiguration),
              testing: T.nilable(Telnyx::Rcs::AgentTestingConfiguration)
            }
          )
        end
        def to_hash
        end

        # Basic agent identity and contact information. At least one complete phone,
        # website, or email contact is required.
        module Basics
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Rcs::AgentConfiguration::Basics::UnionMember0,
                Telnyx::Rcs::AgentConfiguration::Basics::UnionMember1,
                Telnyx::Rcs::AgentConfiguration::Basics::UnionMember2
              )
            end

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rcs::AgentConfiguration::Basics::UnionMember0,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::Rcs::AgentPhoneContact) }
            attr_reader :phone_number

            sig do
              params(phone_number: Telnyx::Rcs::AgentPhoneContact::OrHash).void
            end
            attr_writer :phone_number

            sig { returns(T.nilable(String)) }
            attr_reader :brand_color

            sig { params(brand_color: String).void }
            attr_writer :brand_color

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(Telnyx::Rcs::AgentEmailContact)) }
            attr_reader :email

            sig do
              params(
                email: T.nilable(Telnyx::Rcs::AgentEmailContact::OrHash)
              ).void
            end
            attr_writer :email

            sig { returns(T.nilable(String)) }
            attr_reader :hero_url

            sig { params(hero_url: String).void }
            attr_writer :hero_url

            sig { returns(T.nilable(String)) }
            attr_reader :logo_url

            sig { params(logo_url: String).void }
            attr_writer :logo_url

            sig { returns(T.nilable(String)) }
            attr_reader :privacy_policy_url

            sig { params(privacy_policy_url: String).void }
            attr_writer :privacy_policy_url

            sig { returns(T.nilable(String)) }
            attr_reader :terms_and_conditions_url

            sig { params(terms_and_conditions_url: String).void }
            attr_writer :terms_and_conditions_url

            sig { returns(T.nilable(Telnyx::Rcs::AgentWebsiteContact)) }
            attr_reader :website

            sig do
              params(
                website: T.nilable(Telnyx::Rcs::AgentWebsiteContact::OrHash)
              ).void
            end
            attr_writer :website

            sig do
              params(
                phone_number: Telnyx::Rcs::AgentPhoneContact::OrHash,
                brand_color: String,
                description: String,
                email: T.nilable(Telnyx::Rcs::AgentEmailContact::OrHash),
                hero_url: String,
                logo_url: String,
                privacy_policy_url: String,
                terms_and_conditions_url: String,
                website: T.nilable(Telnyx::Rcs::AgentWebsiteContact::OrHash)
              ).returns(T.attached_class)
            end
            def self.new(
              phone_number:,
              brand_color: nil,
              description: nil,
              email: nil,
              hero_url: nil,
              logo_url: nil,
              privacy_policy_url: nil,
              terms_and_conditions_url: nil,
              website: nil
            )
            end

            sig do
              override.returns(
                {
                  phone_number: Telnyx::Rcs::AgentPhoneContact,
                  brand_color: String,
                  description: String,
                  email: T.nilable(Telnyx::Rcs::AgentEmailContact),
                  hero_url: String,
                  logo_url: String,
                  privacy_policy_url: String,
                  terms_and_conditions_url: String,
                  website: T.nilable(Telnyx::Rcs::AgentWebsiteContact)
                }
              )
            end
            def to_hash
            end
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rcs::AgentConfiguration::Basics::UnionMember1,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::Rcs::AgentWebsiteContact) }
            attr_reader :website

            sig do
              params(website: Telnyx::Rcs::AgentWebsiteContact::OrHash).void
            end
            attr_writer :website

            sig { returns(T.nilable(String)) }
            attr_reader :brand_color

            sig { params(brand_color: String).void }
            attr_writer :brand_color

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(Telnyx::Rcs::AgentEmailContact)) }
            attr_reader :email

            sig do
              params(
                email: T.nilable(Telnyx::Rcs::AgentEmailContact::OrHash)
              ).void
            end
            attr_writer :email

            sig { returns(T.nilable(String)) }
            attr_reader :hero_url

            sig { params(hero_url: String).void }
            attr_writer :hero_url

            sig { returns(T.nilable(String)) }
            attr_reader :logo_url

            sig { params(logo_url: String).void }
            attr_writer :logo_url

            sig { returns(T.nilable(Telnyx::Rcs::AgentPhoneContact)) }
            attr_reader :phone_number

            sig do
              params(
                phone_number: T.nilable(Telnyx::Rcs::AgentPhoneContact::OrHash)
              ).void
            end
            attr_writer :phone_number

            sig { returns(T.nilable(String)) }
            attr_reader :privacy_policy_url

            sig { params(privacy_policy_url: String).void }
            attr_writer :privacy_policy_url

            sig { returns(T.nilable(String)) }
            attr_reader :terms_and_conditions_url

            sig { params(terms_and_conditions_url: String).void }
            attr_writer :terms_and_conditions_url

            sig do
              params(
                website: Telnyx::Rcs::AgentWebsiteContact::OrHash,
                brand_color: String,
                description: String,
                email: T.nilable(Telnyx::Rcs::AgentEmailContact::OrHash),
                hero_url: String,
                logo_url: String,
                phone_number: T.nilable(Telnyx::Rcs::AgentPhoneContact::OrHash),
                privacy_policy_url: String,
                terms_and_conditions_url: String
              ).returns(T.attached_class)
            end
            def self.new(
              website:,
              brand_color: nil,
              description: nil,
              email: nil,
              hero_url: nil,
              logo_url: nil,
              phone_number: nil,
              privacy_policy_url: nil,
              terms_and_conditions_url: nil
            )
            end

            sig do
              override.returns(
                {
                  website: Telnyx::Rcs::AgentWebsiteContact,
                  brand_color: String,
                  description: String,
                  email: T.nilable(Telnyx::Rcs::AgentEmailContact),
                  hero_url: String,
                  logo_url: String,
                  phone_number: T.nilable(Telnyx::Rcs::AgentPhoneContact),
                  privacy_policy_url: String,
                  terms_and_conditions_url: String
                }
              )
            end
            def to_hash
            end
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Rcs::AgentConfiguration::Basics::UnionMember2,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::Rcs::AgentEmailContact) }
            attr_reader :email

            sig { params(email: Telnyx::Rcs::AgentEmailContact::OrHash).void }
            attr_writer :email

            sig { returns(T.nilable(String)) }
            attr_reader :brand_color

            sig { params(brand_color: String).void }
            attr_writer :brand_color

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig { returns(T.nilable(String)) }
            attr_reader :hero_url

            sig { params(hero_url: String).void }
            attr_writer :hero_url

            sig { returns(T.nilable(String)) }
            attr_reader :logo_url

            sig { params(logo_url: String).void }
            attr_writer :logo_url

            sig { returns(T.nilable(Telnyx::Rcs::AgentPhoneContact)) }
            attr_reader :phone_number

            sig do
              params(
                phone_number: T.nilable(Telnyx::Rcs::AgentPhoneContact::OrHash)
              ).void
            end
            attr_writer :phone_number

            sig { returns(T.nilable(String)) }
            attr_reader :privacy_policy_url

            sig { params(privacy_policy_url: String).void }
            attr_writer :privacy_policy_url

            sig { returns(T.nilable(String)) }
            attr_reader :terms_and_conditions_url

            sig { params(terms_and_conditions_url: String).void }
            attr_writer :terms_and_conditions_url

            sig { returns(T.nilable(Telnyx::Rcs::AgentWebsiteContact)) }
            attr_reader :website

            sig do
              params(
                website: T.nilable(Telnyx::Rcs::AgentWebsiteContact::OrHash)
              ).void
            end
            attr_writer :website

            sig do
              params(
                email: Telnyx::Rcs::AgentEmailContact::OrHash,
                brand_color: String,
                description: String,
                hero_url: String,
                logo_url: String,
                phone_number: T.nilable(Telnyx::Rcs::AgentPhoneContact::OrHash),
                privacy_policy_url: String,
                terms_and_conditions_url: String,
                website: T.nilable(Telnyx::Rcs::AgentWebsiteContact::OrHash)
              ).returns(T.attached_class)
            end
            def self.new(
              email:,
              brand_color: nil,
              description: nil,
              hero_url: nil,
              logo_url: nil,
              phone_number: nil,
              privacy_policy_url: nil,
              terms_and_conditions_url: nil,
              website: nil
            )
            end

            sig do
              override.returns(
                {
                  email: Telnyx::Rcs::AgentEmailContact,
                  brand_color: String,
                  description: String,
                  hero_url: String,
                  logo_url: String,
                  phone_number: T.nilable(Telnyx::Rcs::AgentPhoneContact),
                  privacy_policy_url: String,
                  terms_and_conditions_url: String,
                  website: T.nilable(Telnyx::Rcs::AgentWebsiteContact)
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[Telnyx::Rcs::AgentConfiguration::Basics::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
