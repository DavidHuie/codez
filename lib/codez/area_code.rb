module Codez
  class AreaCode
    def self.from_zip(zip)
      data_array = Codez.data[zip.to_s]
      data_array[Codez::INDEX_FOR[:area_code]] if data_array
    end
  end
end


