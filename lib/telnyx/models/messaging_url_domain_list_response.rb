# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingURLDomains#list
    class MessagingURLDomainListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute record_type
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute url_domain
      #
      #   @return [String, nil]
      optional :url_domain, String

      # @!attribute use_case
      #
      #   @return [String, nil]
      optional :use_case, String

      # @!method initialize(id: nil, record_type: nil, url_domain: nil, use_case: nil)
      #   @param id [String]
      #   @param record_type [String]
      #   @param url_domain [String]
      #   @param use_case [String]
    end
  end
end
