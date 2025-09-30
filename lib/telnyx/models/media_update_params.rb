# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Media#update
    class MediaUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute media_url
      #   The URL where the media to be stored in Telnyx network is currently hosted. The
      #   maximum allowed size is 20 MB.
      #
      #   @return [String, nil]
      optional :media_url, String

      # @!attribute ttl_secs
      #   The number of seconds after which the media resource will be deleted, defaults
      #   to 2 days. The maximum allowed vale is 630720000, which translates to 20 years.
      #
      #   @return [Integer, nil]
      optional :ttl_secs, Integer

      # @!method initialize(media_url: nil, ttl_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MediaUpdateParams} for more details.
      #
      #   @param media_url [String] The URL where the media to be stored in Telnyx network is currently hosted. The
      #
      #   @param ttl_secs [Integer] The number of seconds after which the media resource will be deleted, defaults t
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
