# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleListResourcesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BundlePricing::UserBundleListResourcesParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Authenticates the request with your Telnyx API V2 KEY
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_bearer

        sig { params(authorization_bearer: String).void }
        attr_writer :authorization_bearer

        sig do
          params(
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              authorization_bearer: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
