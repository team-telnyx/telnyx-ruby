# typed: strong

module Telnyx
  module Models
    class OrganizationContact < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::OrganizationContact, Telnyx::Internal::AnyHash)
        end

      # Contact's email address
      sig { returns(String) }
      attr_accessor :email

      # Contact's first name
      sig { returns(String) }
      attr_accessor :first_name

      # Contact's job title (required)
      sig { returns(String) }
      attr_accessor :job_title

      # Contact's last name
      sig { returns(String) }
      attr_accessor :last_name

      # Contact's phone number in E.164 format
      sig { returns(String) }
      attr_accessor :phone

      # Organization contact information. Note: the response returns this object with
      # the phone field as 'phone' (not 'phone_number').
      sig do
        params(
          email: String,
          first_name: String,
          job_title: String,
          last_name: String,
          phone: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Contact's email address
        email:,
        # Contact's first name
        first_name:,
        # Contact's job title (required)
        job_title:,
        # Contact's last name
        last_name:,
        # Contact's phone number in E.164 format
        phone:
      )
      end

      sig do
        override.returns(
          {
            email: String,
            first_name: String,
            job_title: String,
            last_name: String,
            phone: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
