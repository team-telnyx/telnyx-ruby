# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp business accounts
      # @return [Telnyx::Resources::Whatsapp::BusinessAccounts]
      attr_reader :business_accounts

      # Manage Whatsapp message templates
      # @return [Telnyx::Resources::Whatsapp::Templates]
      attr_reader :templates

      # Manage Whatsapp phone numbers
      # @return [Telnyx::Resources::Whatsapp::PhoneNumbers]
      attr_reader :phone_numbers

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @business_accounts = Telnyx::Resources::Whatsapp::BusinessAccounts.new(client: client)
        @templates = Telnyx::Resources::Whatsapp::Templates.new(client: client)
        @phone_numbers = Telnyx::Resources::Whatsapp::PhoneNumbers.new(client: client)
      end
    end
  end
end
