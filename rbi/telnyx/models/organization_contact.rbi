# typed: strong

module Telnyx
  module Models
    class OrganizationContact < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::OrganizationContact, Telnyx::Internal::AnyHash)
        end

      # The email address of the main person Telnyx should contact about this account.
      # For a call center (BPO) account this is the email you will verify later, so use
      # a mailbox you can access.
      sig { returns(String) }
      attr_accessor :email

      # The first name of the main person Telnyx should contact about this account.
      sig { returns(String) }
      attr_accessor :first_name

      # The job title of the main person Telnyx should contact about this account.
      sig { returns(String) }
      attr_accessor :job_title

      # The last name of the main person Telnyx should contact about this account.
      sig { returns(String) }
      attr_accessor :last_name

      # The phone number of the main contact, in E.164 format, for example +12125551234.
      sig { returns(String) }
      attr_accessor :phone_number

      sig do
        params(
          email: String,
          first_name: String,
          job_title: String,
          last_name: String,
          phone_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The email address of the main person Telnyx should contact about this account.
        # For a call center (BPO) account this is the email you will verify later, so use
        # a mailbox you can access.
        email:,
        # The first name of the main person Telnyx should contact about this account.
        first_name:,
        # The job title of the main person Telnyx should contact about this account.
        job_title:,
        # The last name of the main person Telnyx should contact about this account.
        last_name:,
        # The phone number of the main contact, in E.164 format, for example +12125551234.
        phone_number:
      )
      end

      sig do
        override.returns(
          {
            email: String,
            first_name: String,
            job_title: String,
            last_name: String,
            phone_number: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
