# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp business accounts
      sig { returns(Telnyx::Resources::Whatsapp::BusinessAccounts) }
      attr_reader :business_accounts

      # Manage Whatsapp message templates
      sig { returns(Telnyx::Resources::Whatsapp::Templates) }
      attr_reader :templates

      # Manage Whatsapp phone numbers
      sig { returns(Telnyx::Resources::Whatsapp::PhoneNumbers) }
      attr_reader :phone_numbers

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
