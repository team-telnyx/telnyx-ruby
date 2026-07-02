# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Kvs#create
      class KvNamespaceResponseWrapper < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Storage::KvNamespace, nil]
        optional :data, -> { Telnyx::Storage::KvNamespace }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Storage::KvNamespace]
      end
    end
  end
end
