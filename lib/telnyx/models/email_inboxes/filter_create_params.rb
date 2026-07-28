# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Filters#create
      class FilterCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute allowlist
        #
        #   @return [Array<String>, nil]
        optional :allowlist, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute blocklist
        #
        #   @return [Array<String>, nil]
        optional :blocklist, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(inbox_id:, allowlist: nil, blocklist: nil, request_options: {})
        #   @param inbox_id [String]
        #   @param allowlist [Array<String>]
        #   @param blocklist [Array<String>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
