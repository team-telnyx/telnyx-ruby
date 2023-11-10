# frozen_string_literal: true

require "rake/testtask"
require "rubocop/rake_task"

task default: %i[test rubocop]

Rake::TestTask.new do |t|
  t.pattern = "./test/**/*_test.rb"
end

RuboCop::RakeTask.new

#
# helpers
#

def fetch_file(url, dest)
  ::File.open(dest, "w") do |file|
    resp = Faraday.get(url)
    unless resp.status == 200
      abort("bad response when fetching: #{url}\n" \
        "Status #{resp.status}: #{resp.body}")
    end
    file.write(resp.body)
    puts "Successfully fetched: #{url}"
    Rake::Task["task_that_might_fail"].invoke
  rescue StandardError => e
    puts "An error occurred: #{e.message}"
  end
end
