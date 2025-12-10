# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class CampaignSharingStatus < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Number10dlc::CampaignSharingStatus,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :downstream_cnp_id

        sig { params(downstream_cnp_id: String).void }
        attr_writer :downstream_cnp_id

        sig { returns(T.nilable(String)) }
        attr_reader :shared_date

        sig { params(shared_date: String).void }
        attr_writer :shared_date

        sig { returns(T.nilable(String)) }
        attr_reader :sharing_status

        sig { params(sharing_status: String).void }
        attr_writer :sharing_status

        sig { returns(T.nilable(String)) }
        attr_reader :status_date

        sig { params(status_date: String).void }
        attr_writer :status_date

        sig { returns(T.nilable(String)) }
        attr_reader :upstream_cnp_id

        sig { params(upstream_cnp_id: String).void }
        attr_writer :upstream_cnp_id

        sig do
          params(
            downstream_cnp_id: String,
            shared_date: String,
            sharing_status: String,
            status_date: String,
            upstream_cnp_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          downstream_cnp_id: nil,
          shared_date: nil,
          sharing_status: nil,
          status_date: nil,
          upstream_cnp_id: nil
        )
        end

        sig do
          override.returns(
            {
              downstream_cnp_id: String,
              shared_date: String,
              sharing_status: String,
              status_date: String,
              upstream_cnp_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
