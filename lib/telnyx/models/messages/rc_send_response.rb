# frozen_string_literal: true

module Telnyx
  module Models
    module Messages
      # @see Telnyx::Resources::Messages::Rcs#send_
      class RcSendResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Messages::RcSendResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Messages::RcSendResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Messages::RcSendResponse::Data]

        # @see Telnyx::Models::Messages::RcSendResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   message ID
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute body
          #
          #   @return [Telnyx::Models::RcsAgentMessage, nil]
          optional :body, -> { Telnyx::RcsAgentMessage }

          # @!attribute direction
          #
          #   @return [String, nil]
          optional :direction, String

          # @!attribute encoding
          #
          #   @return [String, nil]
          optional :encoding, String

          # @!attribute from
          #
          #   @return [Telnyx::Models::Messages::RcSendResponse::Data::From, nil]
          optional :from, -> { Telnyx::Models::Messages::RcSendResponse::Data::From }

          # @!attribute messaging_profile_id
          #
          #   @return [String, nil]
          optional :messaging_profile_id, String

          # @!attribute organization_id
          #
          #   @return [String, nil]
          optional :organization_id, String

          # @!attribute received_at
          #
          #   @return [Time, nil]
          optional :received_at, Time

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute to
          #
          #   @return [Array<Telnyx::Models::Messages::RcSendResponse::Data::To>, nil]
          optional :to, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Messages::RcSendResponse::Data::To] }

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(id: nil, body: nil, direction: nil, encoding: nil, from: nil, messaging_profile_id: nil, organization_id: nil, received_at: nil, record_type: nil, to: nil, type: nil)
          #   @param id [String] message ID
          #
          #   @param body [Telnyx::Models::RcsAgentMessage]
          #
          #   @param direction [String]
          #
          #   @param encoding [String]
          #
          #   @param from [Telnyx::Models::Messages::RcSendResponse::Data::From]
          #
          #   @param messaging_profile_id [String]
          #
          #   @param organization_id [String]
          #
          #   @param received_at [Time]
          #
          #   @param record_type [String]
          #
          #   @param to [Array<Telnyx::Models::Messages::RcSendResponse::Data::To>]
          #
          #   @param type [String]

          # @see Telnyx::Models::Messages::RcSendResponse::Data#from
          class From < Telnyx::Internal::Type::BaseModel
            # @!attribute agent_id
            #   agent ID
            #
            #   @return [String, nil]
            optional :agent_id, String

            # @!attribute agent_name
            #
            #   @return [String, nil]
            optional :agent_name, String

            # @!attribute carrier
            #
            #   @return [String, nil]
            optional :carrier, String

            # @!method initialize(agent_id: nil, agent_name: nil, carrier: nil)
            #   @param agent_id [String] agent ID
            #
            #   @param agent_name [String]
            #
            #   @param carrier [String]
          end

          class To < Telnyx::Internal::Type::BaseModel
            # @!attribute carrier
            #
            #   @return [String, nil]
            optional :carrier, String

            # @!attribute line_type
            #
            #   @return [String, nil]
            optional :line_type, String

            # @!attribute phone_number
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute status
            #
            #   @return [String, nil]
            optional :status, String

            # @!method initialize(carrier: nil, line_type: nil, phone_number: nil, status: nil)
            #   @param carrier [String]
            #   @param line_type [String]
            #   @param phone_number [String]
            #   @param status [String]
          end
        end
      end
    end
  end
end
