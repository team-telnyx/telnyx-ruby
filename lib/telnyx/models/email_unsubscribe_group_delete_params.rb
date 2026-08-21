# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailUnsubscribeGroups#delete
    class EmailUnsubscribeGroupDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute force
      #   Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      #   (bool) are truthy; all other values are false.
      #
      #   @return [Symbol, Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force::ForceString, Boolean, nil]
      optional :force, union: -> { Telnyx::EmailUnsubscribeGroupDeleteParams::Force }

      # @!method initialize(id:, force: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailUnsubscribeGroupDeleteParams} for more details.
      #
      #   @param id [String]
      #
      #   @param force [Symbol, Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force::ForceString, Boolean] Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      # (bool) are truthy; all other values are false.
      module Force
        extend Telnyx::Internal::Type::Union

        variant enum: -> { Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString }

        variant Telnyx::Internal::Type::Boolean

        module ForceString
          extend Telnyx::Internal::Type::Enum

          TRUE = :true
          FALSE = :false

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @!method self.variants
        #   @return [Array(Symbol, Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force::ForceString, Boolean)]
      end
    end
  end
end
