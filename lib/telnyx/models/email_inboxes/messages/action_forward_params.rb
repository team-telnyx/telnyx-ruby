# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        # @see Telnyx::Resources::EmailInboxes::Messages::Actions#forward
        class ActionForwardParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute inbox_id
          #
          #   @return [String]
          required :inbox_id, String

          # @!attribute message_id
          #
          #   @return [String]
          required :message_id, String

          # @!attribute to
          #   One recipient or a non-empty recipient array. Each recipient may be an email
          #   string or an object with `email` and optional `name`.
          #
          #   @return [String, Telnyx::Models::EmailInboxes::Messages::ActionForwardParams::To::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>]
          required :to, union: -> { Telnyx::EmailInboxes::Messages::ActionForwardParams::To }

          # @!attribute bcc
          #   One recipient or a recipient array. Each recipient may be an email string or an
          #   object with `email` and optional `name`.
          #
          #   @return [String, Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>, nil]
          optional :bcc, union: -> { Telnyx::EmailInboxes::Messages::InboxActionRecipientInput }

          # @!attribute cc
          #   One recipient or a recipient array. Each recipient may be an email string or an
          #   object with `email` and optional `name`.
          #
          #   @return [String, Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>, nil]
          optional :cc, union: -> { Telnyx::EmailInboxes::Messages::InboxActionRecipientInput }

          # @!attribute html
          #   Optional HTML note prepended to the generated forwarded-message block. Blank
          #   values are treated as omitted.
          #
          #   @return [String, nil]
          optional :html, String

          # @!attribute text
          #   Optional plain-text note prepended to the generated forwarded-message block.
          #   Blank values are treated as omitted.
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(inbox_id:, message_id:, to:, bcc: nil, cc: nil, html: nil, text: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::EmailInboxes::Messages::ActionForwardParams} for more details.
          #
          #   @param inbox_id [String]
          #
          #   @param message_id [String]
          #
          #   @param to [String, Telnyx::Models::EmailInboxes::Messages::ActionForwardParams::To::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>] One recipient or a non-empty recipient array. Each recipient may be an email str
          #
          #   @param bcc [String, Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>] One recipient or a recipient array. Each recipient may be an email string or an
          #
          #   @param cc [String, Telnyx::Models::EmailInboxes::Messages::InboxActionRecipientInput::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>] One recipient or a recipient array. Each recipient may be an email string or an
          #
          #   @param html [String] Optional HTML note prepended to the generated forwarded-message block. Blank val
          #
          #   @param text [String] Optional plain-text note prepended to the generated forwarded-message block. Bla
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # One recipient or a non-empty recipient array. Each recipient may be an email
          # string or an object with `email` and optional `name`.
          module To
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::EmailInboxes::Messages::ActionForwardParams::To::InboxRecipientAddress }

            variant -> { Telnyx::Models::EmailInboxes::Messages::ActionForwardParams::To::InboxActionEmailAddressInputArray }

            class InboxRecipientAddress < Telnyx::Internal::Type::BaseModel
              # @!attribute email
              #
              #   @return [String]
              required :email, String

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!method initialize(email:, name: nil)
              #   @param email [String]
              #   @param name [String]
            end

            # @!method self.variants
            #   @return [Array(String, Telnyx::Models::EmailInboxes::Messages::ActionForwardParams::To::InboxRecipientAddress, Array<String, Telnyx::Models::EmailInboxes::Messages::InboxActionEmailAddressInput::InboxRecipientAddress>)]

            # @type [Telnyx::Internal::Type::Converter]
            InboxActionEmailAddressInputArray =
              Telnyx::Internal::Type::ArrayOf[union: -> {
                Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput
              }]
          end
        end
      end
    end
  end
end
