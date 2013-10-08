module Codez

  GEM_PATH = File.dirname(__FILE__)
  ZIP_TO_FIPS_FILE = File.join(GEM_PATH, 'codez/data/zip_to_fips.json')

end

require "json"
require_relative "./codez/fips"
