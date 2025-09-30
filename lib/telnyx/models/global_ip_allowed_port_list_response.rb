# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPAllowedPorts#list
    class GlobalIPAllowedPortListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPAllowedPortListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPAllowedPortListResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPAllowedPortListResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute first_port
        #   First port of a range.
        #
        #   @return [Integer, nil]
        optional :first_port, Integer

        # @!attribute last_port
        #   Last port of a range.
        #
        #   @return [Integer, nil]
        optional :last_port, Integer

        # @!attribute name
        #   A name for the Global IP ports range.
        #
        #   @return [String, nil]
        optional :name, String

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute protocol_code
          #   The Global IP Protocol code.
          #
          #   @return [String, nil]
          optional :protocol_code, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(id: nil, first_port: nil, last_port: nil, name: nil, protocol_code: nil, record_type: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param first_port [Integer] First port of a range.
        #
        #   @param last_port [Integer] Last port of a range.
        #
        #   @param name [String] A name for the Global IP ports range.
        #
        #   @param protocol_code [String] The Global IP Protocol code.
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end
