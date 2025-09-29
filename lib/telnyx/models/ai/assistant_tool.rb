# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # The handoff tool allows the assistant to hand off control of the conversation to
      # another AI assistant. By default, this will happen transparently to the end
      # user.
      module AssistantTool
        extend Telnyx::Internal::Type::Union

        variant -> { Telnyx::AI::WebhookTool }

        variant -> { Telnyx::AI::RetrievalTool }

        # The handoff tool allows the assistant to hand off control of the conversation to another AI assistant. By default, this will happen transparently to the end user.
        variant -> { Telnyx::AI::AssistantTool::HandoffTool }

        variant -> { Telnyx::AI::HangupTool }

        variant -> { Telnyx::AI::TransferTool }

        variant -> { Telnyx::AI::AssistantTool::SipReferTool }

        variant -> { Telnyx::AI::AssistantTool::DtmfTool }

        class HandoffTool < Telnyx::Internal::Type::BaseModel
          # @!attribute handoff
          #
          #   @return [Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff]
          required :handoff, -> { Telnyx::AI::AssistantTool::HandoffTool::Handoff }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::AI::AssistantTool::HandoffTool::Type]
          required :type, enum: -> { Telnyx::AI::AssistantTool::HandoffTool::Type }

          # @!method initialize(handoff:, type:)
          #   The handoff tool allows the assistant to hand off control of the conversation to
          #   another AI assistant. By default, this will happen transparently to the end
          #   user.
          #
          #   @param handoff [Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff]
          #   @param type [Symbol, Telnyx::Models::AI::AssistantTool::HandoffTool::Type]

          # @see Telnyx::Models::AI::AssistantTool::HandoffTool#handoff
          class Handoff < Telnyx::Internal::Type::BaseModel
            # @!attribute ai_assistants
            #   List of possible assistants that can receive a handoff.
            #
            #   @return [Array<Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff::AIAssistant>]
            required :ai_assistants,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantTool::HandoffTool::Handoff::AIAssistant] }

            # @!attribute voice_mode
            #   With the unified voice mode all assistants share the same voice, making the
            #   handoff transparent to the user. With the distinct voice mode all assistants
            #   retain their voice configuration, providing the experience of a conference call
            #   with a team of assistants.
            #
            #   @return [Symbol, Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff::VoiceMode, nil]
            optional :voice_mode, enum: -> { Telnyx::AI::AssistantTool::HandoffTool::Handoff::VoiceMode }

            # @!method initialize(ai_assistants:, voice_mode: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff} for more details.
            #
            #   @param ai_assistants [Array<Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff::AIAssistant>] List of possible assistants that can receive a handoff.
            #
            #   @param voice_mode [Symbol, Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff::VoiceMode] With the unified voice mode all assistants share the same voice, making the hand

            class AIAssistant < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   The ID of the assistant to hand off to.
              #
              #   @return [String]
              required :id, String

              # @!attribute name
              #   Helpful name for giving context on when to handoff to the assistant.
              #
              #   @return [String]
              required :name, String

              # @!method initialize(id:, name:)
              #   @param id [String] The ID of the assistant to hand off to.
              #
              #   @param name [String] Helpful name for giving context on when to handoff to the assistant.
            end

            # With the unified voice mode all assistants share the same voice, making the
            # handoff transparent to the user. With the distinct voice mode all assistants
            # retain their voice configuration, providing the experience of a conference call
            # with a team of assistants.
            #
            # @see Telnyx::Models::AI::AssistantTool::HandoffTool::Handoff#voice_mode
            module VoiceMode
              extend Telnyx::Internal::Type::Enum

              UNIFIED = :unified
              DISTINCT = :distinct

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Telnyx::Models::AI::AssistantTool::HandoffTool#type
          module Type
            extend Telnyx::Internal::Type::Enum

            HANDOFF = :handoff

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class SipReferTool < Telnyx::Internal::Type::BaseModel
          # @!attribute refer
          #
          #   @return [Telnyx::Models::AI::AssistantTool::SipReferTool::Refer]
          required :refer, -> { Telnyx::AI::AssistantTool::SipReferTool::Refer }

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::AI::AssistantTool::SipReferTool::Type]
          required :type, enum: -> { Telnyx::AI::AssistantTool::SipReferTool::Type }

          # @!method initialize(refer:, type:)
          #   @param refer [Telnyx::Models::AI::AssistantTool::SipReferTool::Refer]
          #   @param type [Symbol, Telnyx::Models::AI::AssistantTool::SipReferTool::Type]

          # @see Telnyx::Models::AI::AssistantTool::SipReferTool#refer
          class Refer < Telnyx::Internal::Type::BaseModel
            # @!attribute targets
            #   The different possible targets of the SIP refer. The assistant will be able to
            #   choose one of the targets to refer the call to.
            #
            #   @return [Array<Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::Target>]
            required :targets,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantTool::SipReferTool::Refer::Target] }

            # @!attribute custom_headers
            #   Custom headers to be added to the SIP REFER.
            #
            #   @return [Array<Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::CustomHeader>, nil]
            optional :custom_headers,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantTool::SipReferTool::Refer::CustomHeader] }

            # @!attribute sip_headers
            #   SIP headers to be added to the SIP REFER. Currently only User-to-User and
            #   Diversion headers are supported.
            #
            #   @return [Array<Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::SipHeader>, nil]
            optional :sip_headers,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantTool::SipReferTool::Refer::SipHeader] }

            # @!method initialize(targets:, custom_headers: nil, sip_headers: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::AssistantTool::SipReferTool::Refer} for more details.
            #
            #   @param targets [Array<Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::Target>] The different possible targets of the SIP refer. The assistant will be able to c
            #
            #   @param custom_headers [Array<Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::CustomHeader>] Custom headers to be added to the SIP REFER.
            #
            #   @param sip_headers [Array<Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::SipHeader>] SIP headers to be added to the SIP REFER. Currently only User-to-User and Divers

            class Target < Telnyx::Internal::Type::BaseModel
              # @!attribute name
              #   The name of the target.
              #
              #   @return [String]
              required :name, String

              # @!attribute sip_address
              #   The SIP URI to which the call will be referred.
              #
              #   @return [String]
              required :sip_address, String

              # @!attribute sip_auth_password
              #   SIP Authentication password used for SIP challenges.
              #
              #   @return [String, nil]
              optional :sip_auth_password, String

              # @!attribute sip_auth_username
              #   SIP Authentication username used for SIP challenges.
              #
              #   @return [String, nil]
              optional :sip_auth_username, String

              # @!method initialize(name:, sip_address:, sip_auth_password: nil, sip_auth_username: nil)
              #   @param name [String] The name of the target.
              #
              #   @param sip_address [String] The SIP URI to which the call will be referred.
              #
              #   @param sip_auth_password [String] SIP Authentication password used for SIP challenges.
              #
              #   @param sip_auth_username [String] SIP Authentication username used for SIP challenges.
            end

            class CustomHeader < Telnyx::Internal::Type::BaseModel
              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute value
              #   The value of the header. Note that we support mustache templating for the value.
              #   For example you can use
              #   `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              #   the integration secret.
              #
              #   @return [String, nil]
              optional :value, String

              # @!method initialize(name: nil, value: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::CustomHeader} for more
              #   details.
              #
              #   @param name [String]
              #
              #   @param value [String] The value of the header. Note that we support mustache templating for the value.
            end

            class SipHeader < Telnyx::Internal::Type::BaseModel
              # @!attribute name
              #
              #   @return [Symbol, Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::SipHeader::Name, nil]
              optional :name, enum: -> { Telnyx::AI::AssistantTool::SipReferTool::Refer::SipHeader::Name }

              # @!attribute value
              #   The value of the header. Note that we support mustache templating for the value.
              #   For example you can use
              #   `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              #   the integration secret.
              #
              #   @return [String, nil]
              optional :value, String

              # @!method initialize(name: nil, value: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::SipHeader} for more
              #   details.
              #
              #   @param name [Symbol, Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::SipHeader::Name]
              #
              #   @param value [String] The value of the header. Note that we support mustache templating for the value.

              # @see Telnyx::Models::AI::AssistantTool::SipReferTool::Refer::SipHeader#name
              module Name
                extend Telnyx::Internal::Type::Enum

                USER_TO_USER = :"User-to-User"
                DIVERSION = :Diversion

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see Telnyx::Models::AI::AssistantTool::SipReferTool#type
          module Type
            extend Telnyx::Internal::Type::Enum

            REFER = :refer

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class DtmfTool < Telnyx::Internal::Type::BaseModel
          # @!attribute send_dtmf
          #
          #   @return [Hash{Symbol=>Object}]
          required :send_dtmf, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::AI::AssistantTool::DtmfTool::Type]
          required :type, enum: -> { Telnyx::AI::AssistantTool::DtmfTool::Type }

          # @!method initialize(send_dtmf:, type:)
          #   @param send_dtmf [Hash{Symbol=>Object}]
          #   @param type [Symbol, Telnyx::Models::AI::AssistantTool::DtmfTool::Type]

          # @see Telnyx::Models::AI::AssistantTool::DtmfTool#type
          module Type
            extend Telnyx::Internal::Type::Enum

            SEND_DTMF = :send_dtmf

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::HandoffTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::AssistantTool::SipReferTool, Telnyx::Models::AI::AssistantTool::DtmfTool)]
      end
    end
  end
end
