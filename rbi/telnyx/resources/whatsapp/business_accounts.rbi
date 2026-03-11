# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp business accounts
      class BusinessAccounts
        sig do
          returns(Telnyx::Resources::Whatsapp::BusinessAccounts::PhoneNumbers)
        end
        attr_reader :phone_numbers

        # Manage Whatsapp business accounts
        sig { returns(Telnyx::Resources::Whatsapp::BusinessAccounts::Settings) }
        attr_reader :settings

        # Get a single Whatsapp Business Account
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse)
        end
        def retrieve(
          # Whatsapp Business Account ID
          id,
          request_options: {}
        )
        end

        # List Whatsapp Business Accounts
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Whatsapp::BusinessAccountListResponse
            ]
          )
        end
        def list(page_number: nil, page_size: nil, request_options: {})
        end

        # Delete a Whatsapp Business Account
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Whatsapp Business Account ID
          id,
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
end
