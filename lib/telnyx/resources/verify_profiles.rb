# frozen_string_literal: true

module Telnyx
  module Resources
    class VerifyProfiles
      # Creates a new Verify profile to associate verifications with.
      #
      # @overload create(name:, call: nil, flashcall: nil, language: nil, sms: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param name [String]
      # @param call [Telnyx::Models::VerifyProfileCreateParams::Call]
      # @param flashcall [Telnyx::Models::VerifyProfileCreateParams::Flashcall]
      # @param language [String]
      # @param sms [Telnyx::Models::VerifyProfileCreateParams::SMS]
      # @param webhook_failover_url [String]
      # @param webhook_url [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifyProfileData]
      #
      # @see Telnyx::Models::VerifyProfileCreateParams
      def create(params)
        parsed, options = Telnyx::VerifyProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "verify_profiles",
          body: parsed,
          model: Telnyx::VerifyProfileData,
          options: options
        )
      end

      # Gets a single Verify profile.
      #
      # @overload retrieve(verify_profile_id, request_options: {})
      #
      # @param verify_profile_id [String] The identifier of the Verify profile to retrieve.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifyProfileData]
      #
      # @see Telnyx::Models::VerifyProfileRetrieveParams
      def retrieve(verify_profile_id, params = {})
        @client.request(
          method: :get,
          path: ["verify_profiles/%1$s", verify_profile_id],
          model: Telnyx::VerifyProfileData,
          options: params[:request_options]
        )
      end

      # Update Verify profile
      #
      # @overload update(verify_profile_id, call: nil, flashcall: nil, language: nil, name: nil, sms: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param verify_profile_id [String] The identifier of the Verify profile to update.
      #
      # @param call [Telnyx::Models::VerifyProfileUpdateParams::Call]
      #
      # @param flashcall [Telnyx::Models::VerifyProfileUpdateParams::Flashcall]
      #
      # @param language [String]
      #
      # @param name [String]
      #
      # @param sms [Telnyx::Models::VerifyProfileUpdateParams::SMS]
      #
      # @param webhook_failover_url [String]
      #
      # @param webhook_url [String]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifyProfileData]
      #
      # @see Telnyx::Models::VerifyProfileUpdateParams
      def update(verify_profile_id, params = {})
        parsed, options = Telnyx::VerifyProfileUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["verify_profiles/%1$s", verify_profile_id],
          body: parsed,
          model: Telnyx::VerifyProfileData,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VerifyProfileListParams} for more details.
      #
      # Gets a paginated list of Verify profiles.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::VerifyProfileListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      # @param page [Telnyx::Models::VerifyProfileListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifyProfileListResponse]
      #
      # @see Telnyx::Models::VerifyProfileListParams
      def list(params = {})
        parsed, options = Telnyx::VerifyProfileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "verify_profiles",
          query: parsed,
          model: Telnyx::Models::VerifyProfileListResponse,
          options: options
        )
      end

      # Delete Verify profile
      #
      # @overload delete(verify_profile_id, request_options: {})
      #
      # @param verify_profile_id [String] The identifier of the Verify profile to delete.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifyProfileData]
      #
      # @see Telnyx::Models::VerifyProfileDeleteParams
      def delete(verify_profile_id, params = {})
        @client.request(
          method: :delete,
          path: ["verify_profiles/%1$s", verify_profile_id],
          model: Telnyx::VerifyProfileData,
          options: params[:request_options]
        )
      end

      # Create a new Verify profile message template.
      #
      # @overload create_template(text:, request_options: {})
      #
      # @param text [String] The text content of the message template.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageTemplate]
      #
      # @see Telnyx::Models::VerifyProfileCreateTemplateParams
      def create_template(params)
        parsed, options = Telnyx::VerifyProfileCreateTemplateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "verify_profiles/templates",
          body: parsed,
          model: Telnyx::MessageTemplate,
          options: options
        )
      end

      # List all Verify profile message templates.
      #
      # @overload retrieve_templates(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VerifyProfileRetrieveTemplatesResponse]
      #
      # @see Telnyx::Models::VerifyProfileRetrieveTemplatesParams
      def retrieve_templates(params = {})
        @client.request(
          method: :get,
          path: "verify_profiles/templates",
          model: Telnyx::Models::VerifyProfileRetrieveTemplatesResponse,
          options: params[:request_options]
        )
      end

      # Update an existing Verify profile message template.
      #
      # @overload update_template(template_id, text:, request_options: {})
      #
      # @param template_id [String] The identifier of the message template to update.
      #
      # @param text [String] The text content of the message template.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessageTemplate]
      #
      # @see Telnyx::Models::VerifyProfileUpdateTemplateParams
      def update_template(template_id, params)
        parsed, options = Telnyx::VerifyProfileUpdateTemplateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["verify_profiles/templates/%1$s", template_id],
          body: parsed,
          model: Telnyx::MessageTemplate,
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
