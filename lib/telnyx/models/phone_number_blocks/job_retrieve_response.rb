# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumberBlocks
      # @see Telnyx::Resources::PhoneNumberBlocks::Jobs#retrieve
      class JobRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PhoneNumberBlocks::Job, nil]
        optional :data, -> { Telnyx::PhoneNumberBlocks::Job }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PhoneNumberBlocks::Job]
      end
    end
  end
end
