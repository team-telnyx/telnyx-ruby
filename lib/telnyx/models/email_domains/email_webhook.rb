# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # @see Telnyx::Resources::EmailDomains::Webhooks#list
      class EmailWebhook < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute domain_id
        #
        #   @return [String]
        required :domain_id, String

        # @!attribute events
        #   Allowlist of event types delivered to this webhook. At least one event is
        #   required — there is no default-to-all.
        #
        #   @return [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>]
        required :events, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::EmailDomains::EmailWebhookEvent] }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailDomains::EmailWebhook::RecordType]
        required :record_type, enum: -> { Telnyx::EmailDomains::EmailWebhook::RecordType }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute url
        #   HTTPS endpoint to deliver subscribed events to.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(id:, created_at:, domain_id:, events:, record_type:, updated_at:, url:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailDomains::EmailWebhook} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param domain_id [String]
        #
        #   @param events [Array<Symbol, Telnyx::Models::EmailDomains::EmailWebhookEvent>] Allowlist of event types delivered to this webhook. At least one event is requir
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailDomains::EmailWebhook::RecordType]
        #
        #   @param updated_at [Time]
        #
        #   @param url [String] HTTPS endpoint to deliver subscribed events to.

        # @see Telnyx::Models::EmailDomains::EmailWebhook#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_WEBHOOK = :email_webhook

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
