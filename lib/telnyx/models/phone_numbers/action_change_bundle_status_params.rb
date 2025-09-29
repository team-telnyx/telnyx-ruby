# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Actions#change_bundle_status
      class ActionChangeBundleStatusParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bundle_id
        #   The new bundle_id setting for the number. If you are assigning the number to a
        #   bundle, this is the unique ID of the bundle you wish to use. If you are removing
        #   the number from a bundle, this must be null. You cannot assign a number from one
        #   bundle to another directly. You must first remove it from a bundle, and then
        #   assign it to a new bundle.
        #
        #   @return [String]
        required :bundle_id, String

        # @!method initialize(bundle_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::ActionChangeBundleStatusParams} for more details.
        #
        #   @param bundle_id [String] The new bundle_id setting for the number. If you are assigning the number to a b
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
