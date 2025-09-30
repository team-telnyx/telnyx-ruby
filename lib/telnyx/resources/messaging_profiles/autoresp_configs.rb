# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingProfiles
      class AutorespConfigs
        # Create Auto-Reponse Setting
        #
        # @overload create(profile_id, country_code:, keywords:, op:, resp_text: nil, request_options: {})
        #
        # @param profile_id [String]
        # @param country_code [String]
        # @param keywords [Array<String>]
        # @param op [Symbol, Telnyx::Models::MessagingProfiles::AutoRespConfigCreate::Op]
        # @param resp_text [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MessagingProfiles::AutoRespConfigResponse]
        #
        # @see Telnyx::Models::MessagingProfiles::AutorespConfigCreateParams
        def create(profile_id, params)
          parsed, options = Telnyx::MessagingProfiles::AutorespConfigCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["messaging_profiles/%1$s/autoresp_configs", profile_id],
            body: parsed,
            model: Telnyx::MessagingProfiles::AutoRespConfigResponse,
            options: options
          )
        end

        # Get Auto-Response Setting
        #
        # @overload retrieve(autoresp_cfg_id, profile_id:, request_options: {})
        #
        # @param autoresp_cfg_id [String]
        # @param profile_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MessagingProfiles::AutoRespConfigResponse]
        #
        # @see Telnyx::Models::MessagingProfiles::AutorespConfigRetrieveParams
        def retrieve(autoresp_cfg_id, params)
          parsed, options = Telnyx::MessagingProfiles::AutorespConfigRetrieveParams.dump_request(params)
          profile_id =
            parsed.delete(:profile_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["messaging_profiles/%1$s/autoresp_configs/%2$s", profile_id, autoresp_cfg_id],
            model: Telnyx::MessagingProfiles::AutoRespConfigResponse,
            options: options
          )
        end

        # Update Auto-Response Setting
        #
        # @overload update(autoresp_cfg_id, profile_id:, country_code:, keywords:, op:, resp_text: nil, request_options: {})
        #
        # @param autoresp_cfg_id [String] Path param:
        #
        # @param profile_id [String] Path param:
        #
        # @param country_code [String] Body param:
        #
        # @param keywords [Array<String>] Body param:
        #
        # @param op [Symbol, Telnyx::Models::MessagingProfiles::AutoRespConfigCreate::Op] Body param:
        #
        # @param resp_text [String] Body param:
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MessagingProfiles::AutoRespConfigResponse]
        #
        # @see Telnyx::Models::MessagingProfiles::AutorespConfigUpdateParams
        def update(autoresp_cfg_id, params)
          parsed, options = Telnyx::MessagingProfiles::AutorespConfigUpdateParams.dump_request(params)
          profile_id =
            parsed.delete(:profile_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["messaging_profiles/%1$s/autoresp_configs/%2$s", profile_id, autoresp_cfg_id],
            body: parsed,
            model: Telnyx::MessagingProfiles::AutoRespConfigResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::MessagingProfiles::AutorespConfigListParams} for more details.
        #
        # List Auto-Response Settings
        #
        # @overload list(profile_id, country_code: nil, created_at: nil, updated_at: nil, request_options: {})
        #
        # @param profile_id [String]
        #
        # @param country_code [String]
        #
        # @param created_at [Telnyx::Models::MessagingProfiles::AutorespConfigListParams::CreatedAt] Consolidated created_at parameter (deepObject style). Originally: created_at[gte
        #
        # @param updated_at [Telnyx::Models::MessagingProfiles::AutorespConfigListParams::UpdatedAt] Consolidated updated_at parameter (deepObject style). Originally: updated_at[gte
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MessagingProfiles::AutorespConfigListResponse]
        #
        # @see Telnyx::Models::MessagingProfiles::AutorespConfigListParams
        def list(profile_id, params = {})
          parsed, options = Telnyx::MessagingProfiles::AutorespConfigListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["messaging_profiles/%1$s/autoresp_configs", profile_id],
            query: parsed,
            model: Telnyx::Models::MessagingProfiles::AutorespConfigListResponse,
            options: options
          )
        end

        # Delete Auto-Response Setting
        #
        # @overload delete(autoresp_cfg_id, profile_id:, request_options: {})
        #
        # @param autoresp_cfg_id [String]
        # @param profile_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Telnyx::Models::MessagingProfiles::AutorespConfigDeleteParams
        def delete(autoresp_cfg_id, params)
          parsed, options = Telnyx::MessagingProfiles::AutorespConfigDeleteParams.dump_request(params)
          profile_id =
            parsed.delete(:profile_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["messaging_profiles/%1$s/autoresp_configs/%2$s", profile_id, autoresp_cfg_id],
            model: Telnyx::Internal::Type::Unknown,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
