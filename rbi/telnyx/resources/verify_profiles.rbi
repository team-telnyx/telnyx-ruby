# typed: strong

module Telnyx
  module Resources
    class VerifyProfiles
      # Creates a new Verify profile to associate verifications with.
      sig do
        params(
          name: String,
          call: Telnyx::VerifyProfileCreateParams::Call::OrHash,
          flashcall: Telnyx::VerifyProfileCreateParams::Flashcall::OrHash,
          language: String,
          sms: Telnyx::VerifyProfileCreateParams::SMS::OrHash,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VerifyProfileData)
      end
      def create(
        name:,
        call: nil,
        flashcall: nil,
        language: nil,
        sms: nil,
        webhook_failover_url: nil,
        webhook_url: nil,
        request_options: {}
      )
      end

      # Gets a single Verify profile.
      sig do
        params(
          verify_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VerifyProfileData)
      end
      def retrieve(
        # The identifier of the Verify profile to retrieve.
        verify_profile_id,
        request_options: {}
      )
      end

      # Update Verify profile
      sig do
        params(
          verify_profile_id: String,
          call: Telnyx::VerifyProfileUpdateParams::Call::OrHash,
          flashcall: Telnyx::VerifyProfileUpdateParams::Flashcall::OrHash,
          language: String,
          name: String,
          sms: Telnyx::VerifyProfileUpdateParams::SMS::OrHash,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VerifyProfileData)
      end
      def update(
        # The identifier of the Verify profile to update.
        verify_profile_id,
        call: nil,
        flashcall: nil,
        language: nil,
        name: nil,
        sms: nil,
        webhook_failover_url: nil,
        webhook_url: nil,
        request_options: {}
      )
      end

      # Gets a paginated list of Verify profiles.
      sig do
        params(
          filter: Telnyx::VerifyProfileListParams::Filter::OrHash,
          page: Telnyx::VerifyProfileListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VerifyProfileListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[name]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Delete Verify profile
      sig do
        params(
          verify_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VerifyProfileData)
      end
      def delete(
        # The identifier of the Verify profile to delete.
        verify_profile_id,
        request_options: {}
      )
      end

      # Create a new Verify profile message template.
      sig do
        params(
          text: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VerifyProfileCreateTemplateResponse)
      end
      def create_template(
        # The text content of the message template.
        text:,
        request_options: {}
      )
      end

      # List all Verify profile message templates.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::VerifyProfileRetrieveTemplatesResponse
        )
      end
      def retrieve_templates(request_options: {})
      end

      # Update an existing Verify profile message template.
      sig do
        params(
          template_id: String,
          text: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VerifyProfileUpdateTemplateResponse)
      end
      def update_template(
        # The identifier of the message template to update.
        template_id,
        # The text content of the message template.
        text:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
