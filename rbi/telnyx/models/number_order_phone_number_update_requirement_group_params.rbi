# typed: strong

module Telnyx
  module Models
    class NumberOrderPhoneNumberUpdateRequirementGroupParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberOrderPhoneNumberUpdateRequirementGroupParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The ID of the requirement group to associate
      sig { returns(String) }
      attr_accessor :requirement_group_id

      sig do
        params(
          id: String,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The ID of the requirement group to associate
        requirement_group_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            requirement_group_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
