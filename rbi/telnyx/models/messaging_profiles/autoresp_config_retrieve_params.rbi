# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class AutorespConfigRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingProfiles::AutorespConfigRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :profile_id

        sig do
          params(
            profile_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(profile_id:, request_options: {})
        end

        sig do
          override.returns(
            { profile_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
