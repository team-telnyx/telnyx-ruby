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
      #   @return [Symbol, Boolean, Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force, nil]
      optional :force, union: -> { Telnyx::EmailUnsubscribeGroupDeleteParams::Force }

      # @!method initialize(id:, force: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailUnsubscribeGroupDeleteParams} for more details.
      #
      #   @param id [String]
      #
      #   @param force [Symbol, Boolean, Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force] Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      # (bool) are truthy; all other values are false.
      module Force
        extend Telnyx::Internal::Type::Union

        variant const: -> { Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force::TRUE }

        variant const: -> { Telnyx::Models::EmailUnsubscribeGroupDeleteParams::Force::FALSE }

        variant Telnyx::Internal::Type::Boolean

        # @!method self.variants
        #   @return [Array(Symbol, Boolean)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Telnyx::EmailUnsubscribeGroupDeleteParams::Force::TaggedSymbol, T::Boolean) }
        end

        # @!group

        TRUE = :true
        FALSE = :false

        # @!endgroup
      end
    end
  end
end
