# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentConfiguration < Telnyx::Internal::Type::BaseModel
        # @!attribute basics
        #   Basic agent identity and contact information. At least one complete phone,
        #   website, or email contact is required.
        #
        #   @return [Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember0, Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember1, Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember2]
        required :basics, union: -> { Telnyx::Rcs::AgentConfiguration::Basics }

        # @!attribute campaign
        #
        #   @return [Telnyx::Models::Rcs::AgentCampaignConfiguration, nil]
        optional :campaign, -> { Telnyx::Rcs::AgentCampaignConfiguration }, nil?: true

        # @!attribute testing
        #
        #   @return [Telnyx::Models::Rcs::AgentTestingConfiguration, nil]
        optional :testing, -> { Telnyx::Rcs::AgentTestingConfiguration }, nil?: true

        # @!method initialize(basics:, campaign: nil, testing: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rcs::AgentConfiguration} for more details.
        #
        #   @param basics [Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember0, Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember1, Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember2] Basic agent identity and contact information. At least one complete phone, websi
        #
        #   @param campaign [Telnyx::Models::Rcs::AgentCampaignConfiguration, nil]
        #
        #   @param testing [Telnyx::Models::Rcs::AgentTestingConfiguration, nil]

        # Basic agent identity and contact information. At least one complete phone,
        # website, or email contact is required.
        #
        # @see Telnyx::Models::Rcs::AgentConfiguration#basics
        module Basics
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::Rcs::AgentConfiguration::Basics::UnionMember0 }

          variant -> { Telnyx::Rcs::AgentConfiguration::Basics::UnionMember1 }

          variant -> { Telnyx::Rcs::AgentConfiguration::Basics::UnionMember2 }

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            # @!attribute phone_number
            #
            #   @return [Telnyx::Models::Rcs::AgentPhoneContact]
            required :phone_number, -> { Telnyx::Rcs::AgentPhoneContact }

            # @!attribute brand_color
            #
            #   @return [String, nil]
            optional :brand_color, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute email
            #
            #   @return [Telnyx::Models::Rcs::AgentEmailContact, nil]
            optional :email, -> { Telnyx::Rcs::AgentEmailContact }, nil?: true

            # @!attribute hero_url
            #
            #   @return [String, nil]
            optional :hero_url, String

            # @!attribute logo_url
            #
            #   @return [String, nil]
            optional :logo_url, String

            # @!attribute privacy_policy_url
            #
            #   @return [String, nil]
            optional :privacy_policy_url, String

            # @!attribute terms_and_conditions_url
            #
            #   @return [String, nil]
            optional :terms_and_conditions_url, String

            # @!attribute website
            #
            #   @return [Telnyx::Models::Rcs::AgentWebsiteContact, nil]
            optional :website, -> { Telnyx::Rcs::AgentWebsiteContact }, nil?: true

            # @!method initialize(phone_number:, brand_color: nil, description: nil, email: nil, hero_url: nil, logo_url: nil, privacy_policy_url: nil, terms_and_conditions_url: nil, website: nil)
            #   @param phone_number [Telnyx::Models::Rcs::AgentPhoneContact]
            #   @param brand_color [String]
            #   @param description [String]
            #   @param email [Telnyx::Models::Rcs::AgentEmailContact, nil]
            #   @param hero_url [String]
            #   @param logo_url [String]
            #   @param privacy_policy_url [String]
            #   @param terms_and_conditions_url [String]
            #   @param website [Telnyx::Models::Rcs::AgentWebsiteContact, nil]
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            # @!attribute website
            #
            #   @return [Telnyx::Models::Rcs::AgentWebsiteContact]
            required :website, -> { Telnyx::Rcs::AgentWebsiteContact }

            # @!attribute brand_color
            #
            #   @return [String, nil]
            optional :brand_color, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute email
            #
            #   @return [Telnyx::Models::Rcs::AgentEmailContact, nil]
            optional :email, -> { Telnyx::Rcs::AgentEmailContact }, nil?: true

            # @!attribute hero_url
            #
            #   @return [String, nil]
            optional :hero_url, String

            # @!attribute logo_url
            #
            #   @return [String, nil]
            optional :logo_url, String

            # @!attribute phone_number
            #
            #   @return [Telnyx::Models::Rcs::AgentPhoneContact, nil]
            optional :phone_number, -> { Telnyx::Rcs::AgentPhoneContact }, nil?: true

            # @!attribute privacy_policy_url
            #
            #   @return [String, nil]
            optional :privacy_policy_url, String

            # @!attribute terms_and_conditions_url
            #
            #   @return [String, nil]
            optional :terms_and_conditions_url, String

            # @!method initialize(website:, brand_color: nil, description: nil, email: nil, hero_url: nil, logo_url: nil, phone_number: nil, privacy_policy_url: nil, terms_and_conditions_url: nil)
            #   @param website [Telnyx::Models::Rcs::AgentWebsiteContact]
            #   @param brand_color [String]
            #   @param description [String]
            #   @param email [Telnyx::Models::Rcs::AgentEmailContact, nil]
            #   @param hero_url [String]
            #   @param logo_url [String]
            #   @param phone_number [Telnyx::Models::Rcs::AgentPhoneContact, nil]
            #   @param privacy_policy_url [String]
            #   @param terms_and_conditions_url [String]
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            # @!attribute email
            #
            #   @return [Telnyx::Models::Rcs::AgentEmailContact]
            required :email, -> { Telnyx::Rcs::AgentEmailContact }

            # @!attribute brand_color
            #
            #   @return [String, nil]
            optional :brand_color, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute hero_url
            #
            #   @return [String, nil]
            optional :hero_url, String

            # @!attribute logo_url
            #
            #   @return [String, nil]
            optional :logo_url, String

            # @!attribute phone_number
            #
            #   @return [Telnyx::Models::Rcs::AgentPhoneContact, nil]
            optional :phone_number, -> { Telnyx::Rcs::AgentPhoneContact }, nil?: true

            # @!attribute privacy_policy_url
            #
            #   @return [String, nil]
            optional :privacy_policy_url, String

            # @!attribute terms_and_conditions_url
            #
            #   @return [String, nil]
            optional :terms_and_conditions_url, String

            # @!attribute website
            #
            #   @return [Telnyx::Models::Rcs::AgentWebsiteContact, nil]
            optional :website, -> { Telnyx::Rcs::AgentWebsiteContact }, nil?: true

            # @!method initialize(email:, brand_color: nil, description: nil, hero_url: nil, logo_url: nil, phone_number: nil, privacy_policy_url: nil, terms_and_conditions_url: nil, website: nil)
            #   @param email [Telnyx::Models::Rcs::AgentEmailContact]
            #   @param brand_color [String]
            #   @param description [String]
            #   @param hero_url [String]
            #   @param logo_url [String]
            #   @param phone_number [Telnyx::Models::Rcs::AgentPhoneContact, nil]
            #   @param privacy_policy_url [String]
            #   @param terms_and_conditions_url [String]
            #   @param website [Telnyx::Models::Rcs::AgentWebsiteContact, nil]
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember0, Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember1, Telnyx::Models::Rcs::AgentConfiguration::Basics::UnionMember2)]
        end
      end
    end
  end
end
