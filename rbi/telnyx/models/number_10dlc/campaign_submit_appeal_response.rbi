# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class CampaignSubmitAppealResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Number10dlc::CampaignSubmitAppealResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Timestamp when the appeal was submitted
        sig { returns(T.nilable(Time)) }
        attr_reader :appealed_at

        sig { params(appealed_at: Time).void }
        attr_writer :appealed_at

        sig { params(appealed_at: Time).returns(T.attached_class) }
        def self.new(
          # Timestamp when the appeal was submitted
          appealed_at: nil
        )
        end

        sig { override.returns({ appealed_at: Time }) }
        def to_hash
        end
      end
    end
  end
end
