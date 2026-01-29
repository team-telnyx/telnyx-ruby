# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePushCredentials#list
    class MobilePushCredentialListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[type],
      #   filter[alias]
      #
      #   @return [Telnyx::Models::MobilePushCredentialListParams::Filter, nil]
      optional :filter, -> { Telnyx::MobilePushCredentialListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MobilePushCredentialListParams} for more details.
      #
      #   @param filter [Telnyx::Models::MobilePushCredentialListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute alias_
        #   Unique mobile push credential alias
        #
        #   @return [String, nil]
        optional :alias_, String, api_name: :alias

        # @!attribute type
        #   type of mobile push credentials
        #
        #   @return [Symbol, Telnyx::Models::MobilePushCredentialListParams::Filter::Type, nil]
        optional :type, enum: -> { Telnyx::MobilePushCredentialListParams::Filter::Type }

        # @!method initialize(alias_: nil, type: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[type],
        #   filter[alias]
        #
        #   @param alias_ [String] Unique mobile push credential alias
        #
        #   @param type [Symbol, Telnyx::Models::MobilePushCredentialListParams::Filter::Type] type of mobile push credentials

        # type of mobile push credentials
        #
        # @see Telnyx::Models::MobilePushCredentialListParams::Filter#type
        module Type
          extend Telnyx::Internal::Type::Enum

          IOS = :ios
          ANDROID = :android

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
