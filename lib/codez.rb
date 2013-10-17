require 'json'
module Codez

  GEM_PATH = File.dirname(__FILE__)
  ZIP_TO_FIPS_FILE = File.join(GEM_PATH, 'codez/data/zip_to_fips.json')
  INDEX_FOR = { fips: 0, area_code: 1, state: 2 }.freeze

  class << self
    attr_accessor :data
  end

  data_file = File.open(ZIP_TO_FIPS_FILE, "r")
  self.data = JSON.load(data_file)

end

require_relative "./codez/fips"
require_relative "./codez/area_code"
require_relative "./codez/state"
