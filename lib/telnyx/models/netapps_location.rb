# frozen_string_literal: true

module Telnyx
  module Models
    class NetappsLocation < Telnyx::Internal::Type::BaseModel
      # @!attribute code
      #   Location code.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute name
      #   Human readable name of location.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute pop
      #   Point of presence of location.
      #
      #   @return [String, nil]
      optional :pop, String

      # @!attribute region
      #   Identifies the geographical region of location.
      #
      #   @return [String, nil]
      optional :region, String

      # @!attribute site
      #   Site of location.
      #
      #   @return [String, nil]
      optional :site, String

      # @!method initialize(code: nil, name: nil, pop: nil, region: nil, site: nil)
      #   @param code [String] Location code.
      #
      #   @param name [String] Human readable name of location.
      #
      #   @param pop [String] Point of presence of location.
      #
      #   @param region [String] Identifies the geographical region of location.
      #
      #   @param site [String] Site of location.
    end
  end
end
