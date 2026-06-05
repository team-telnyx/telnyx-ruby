# typed: strong

module Telnyx
  module Models
    class OrganizationContact < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::OrganizationContact, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :job_title

      sig { returns(String) }
      attr_accessor :last_name

      # E.164 format with leading `+`.
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
        email:,
        first_name:,
        job_title:,
        last_name:,
        # E.164 format with leading `+`.
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
