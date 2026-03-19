# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        # @see Telnyx::Resources::Whatsapp::BusinessAccounts::Settings#retrieve
        class SettingRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::BusinessAccounts::WabaSettings, nil]
          optional :data, -> { Telnyx::Whatsapp::BusinessAccounts::WabaSettings }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Whatsapp::BusinessAccounts::WabaSettings]
        end
      end
    end
  end
end
