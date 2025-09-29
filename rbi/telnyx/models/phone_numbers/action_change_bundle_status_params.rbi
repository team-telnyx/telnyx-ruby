# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class ActionChangeBundleStatusParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::ActionChangeBundleStatusParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The new bundle_id setting for the number. If you are assigning the number to a
        # bundle, this is the unique ID of the bundle you wish to use. If you are removing
        # the number from a bundle, this must be null. You cannot assign a number from one
        # bundle to another directly. You must first remove it from a bundle, and then
        # assign it to a new bundle.
        sig { returns(String) }
        attr_accessor :bundle_id

        sig do
          params(
            bundle_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The new bundle_id setting for the number. If you are assigning the number to a
          # bundle, this is the unique ID of the bundle you wish to use. If you are removing
          # the number from a bundle, this must be null. You cannot assign a number from one
          # bundle to another directly. You must first remove it from a bundle, and then
          # assign it to a new bundle.
          bundle_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { bundle_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
