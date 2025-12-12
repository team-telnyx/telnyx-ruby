# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class CampaignSubmitAppealParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Number10dlc::CampaignSubmitAppealParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Detailed explanation of why the campaign should be reconsidered and what changes
        # have been made to address the rejection reason.
        sig { returns(String) }
        attr_accessor :appeal_reason

        sig do
          params(
            appeal_reason: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Detailed explanation of why the campaign should be reconsidered and what changes
          # have been made to address the rejection reason.
          appeal_reason:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { appeal_reason: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
