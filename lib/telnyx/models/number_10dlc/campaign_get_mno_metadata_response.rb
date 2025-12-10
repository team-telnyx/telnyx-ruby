# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Campaign#get_mno_metadata
      class CampaignGetMnoMetadataResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute mno_10999
        #
        #   @return [Telnyx::Models::Number10dlc::CampaignGetMnoMetadataResponse::Mno10999, nil]
        optional :mno_10999,
                 -> { Telnyx::Models::Number10dlc::CampaignGetMnoMetadataResponse::Mno10999 },
                 api_name: :"10999"

        # @!method initialize(mno_10999: nil)
        #   @param mno_10999 [Telnyx::Models::Number10dlc::CampaignGetMnoMetadataResponse::Mno10999]

        # @see Telnyx::Models::Number10dlc::CampaignGetMnoMetadataResponse#mno_10999
        class Mno10999 < Telnyx::Internal::Type::BaseModel
          # @!attribute min_msg_samples
          #
          #   @return [Integer]
          required :min_msg_samples, Integer, api_name: :minMsgSamples

          # @!attribute mno
          #
          #   @return [String]
          required :mno, String

          # @!attribute mno_review
          #
          #   @return [Boolean]
          required :mno_review, Telnyx::Internal::Type::Boolean, api_name: :mnoReview

          # @!attribute mno_support
          #
          #   @return [Boolean]
          required :mno_support, Telnyx::Internal::Type::Boolean, api_name: :mnoSupport

          # @!attribute no_embedded_link
          #
          #   @return [Boolean]
          required :no_embedded_link, Telnyx::Internal::Type::Boolean, api_name: :noEmbeddedLink

          # @!attribute no_embedded_phone
          #
          #   @return [Boolean]
          required :no_embedded_phone, Telnyx::Internal::Type::Boolean, api_name: :noEmbeddedPhone

          # @!attribute qualify
          #
          #   @return [Boolean]
          required :qualify, Telnyx::Internal::Type::Boolean

          # @!attribute req_subscriber_help
          #
          #   @return [Boolean]
          required :req_subscriber_help, Telnyx::Internal::Type::Boolean, api_name: :reqSubscriberHelp

          # @!attribute req_subscriber_optin
          #
          #   @return [Boolean]
          required :req_subscriber_optin, Telnyx::Internal::Type::Boolean, api_name: :reqSubscriberOptin

          # @!attribute req_subscriber_optout
          #
          #   @return [Boolean]
          required :req_subscriber_optout, Telnyx::Internal::Type::Boolean, api_name: :reqSubscriberOptout

          # @!method initialize(min_msg_samples:, mno:, mno_review:, mno_support:, no_embedded_link:, no_embedded_phone:, qualify:, req_subscriber_help:, req_subscriber_optin:, req_subscriber_optout:)
          #   @param min_msg_samples [Integer]
          #   @param mno [String]
          #   @param mno_review [Boolean]
          #   @param mno_support [Boolean]
          #   @param no_embedded_link [Boolean]
          #   @param no_embedded_phone [Boolean]
          #   @param qualify [Boolean]
          #   @param req_subscriber_help [Boolean]
          #   @param req_subscriber_optin [Boolean]
          #   @param req_subscriber_optout [Boolean]
        end
      end
    end
  end
end
