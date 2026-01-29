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

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::MobilePushCredentialListParams::Page, nil]
      optional :page, -> { Telnyx::MobilePushCredentialListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MobilePushCredentialListParams} for more details.
      #
      #   @param filter [Telnyx::Models::MobilePushCredentialListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
      #
      #   @param page [Telnyx::Models::MobilePushCredentialListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
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

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load.
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load.
        #
        #   @param size [Integer] The size of the page.
      end
    end
  end
end
