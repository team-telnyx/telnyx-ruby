# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::LoaConfigurations#create
      class LoaConfigurationCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Porting::PortingLoaConfiguration, nil]
        optional :data, -> { Telnyx::Porting::PortingLoaConfiguration }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Porting::PortingLoaConfiguration]
      end
    end
  end
end
