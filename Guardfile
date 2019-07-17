# frozen_string_literal: true

directories(%w[lib test]) \
  .select { |d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist") }

guard "rake", task: "test" do
  watch(/.*/)
end
