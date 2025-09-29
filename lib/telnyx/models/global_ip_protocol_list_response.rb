# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPProtocols#list
    class GlobalIPProtocolListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPProtocolListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPProtocolListResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPProtocolListResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   A name for Global IP Protocol.
        #
        #   @return [String, nil]
        optional :name, String

        response_only do
          # @!attribute code
          #   The Global IP Protocol code.
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(code: nil, name: nil, record_type: nil)
        #   @param code [String] The Global IP Protocol code.
        #
        #   @param name [String] A name for Global IP Protocol.
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end
