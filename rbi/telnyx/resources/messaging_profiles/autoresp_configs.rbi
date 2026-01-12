# typed: strong

module Telnyx
  module Resources
    class MessagingProfiles
      class AutorespConfigs
        # Create auto-response setting
        sig do
          params(
            profile_id: String,
            country_code: String,
            keywords: T::Array[String],
            op: Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::OrSymbol,
            resp_text: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MessagingProfiles::AutoRespConfigResponse)
        end
        def create(
          profile_id,
          country_code:,
          keywords:,
          op:,
          resp_text: nil,
          request_options: {}
        )
        end

        # Get Auto-Response Setting
        sig do
          params(
            autoresp_cfg_id: String,
            profile_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MessagingProfiles::AutoRespConfigResponse)
        end
        def retrieve(autoresp_cfg_id, profile_id:, request_options: {})
        end

        # Update Auto-Response Setting
        sig do
          params(
            autoresp_cfg_id: String,
            profile_id: String,
            country_code: String,
            keywords: T::Array[String],
            op: Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::OrSymbol,
            resp_text: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::MessagingProfiles::AutoRespConfigResponse)
        end
        def update(
          # Path param:
          autoresp_cfg_id,
          # Path param:
          profile_id:,
          # Body param:
          country_code:,
          # Body param:
          keywords:,
          # Body param:
          op:,
          # Body param:
          resp_text: nil,
          request_options: {}
        )
        end

        # List Auto-Response Settings
        sig do
          params(
            profile_id: String,
            country_code: String,
            created_at:
              Telnyx::MessagingProfiles::AutorespConfigListParams::CreatedAt::OrHash,
            updated_at:
              Telnyx::MessagingProfiles::AutorespConfigListParams::UpdatedAt::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::MessagingProfiles::AutorespConfigListResponse
          )
        end
        def list(
          profile_id,
          country_code: nil,
          # Consolidated created_at parameter (deepObject style). Originally:
          # created_at[gte], created_at[lte]
          created_at: nil,
          # Consolidated updated_at parameter (deepObject style). Originally:
          # updated_at[gte], updated_at[lte]
          updated_at: nil,
          request_options: {}
        )
        end

        # Delete Auto-Response Setting
        sig do
          params(
            autoresp_cfg_id: String,
            profile_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(String)
        end
        def delete(autoresp_cfg_id, profile_id:, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
