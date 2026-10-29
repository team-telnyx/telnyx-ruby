# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::HostedSignups#create
      class HostedSignupCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Whatsapp::WhatsappHostedSignup, nil]
        optional :data, -> { Telnyx::Whatsapp::WhatsappHostedSignup }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Whatsapp::WhatsappHostedSignup]
      end
    end
  end
end
