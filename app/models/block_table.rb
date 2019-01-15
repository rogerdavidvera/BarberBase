class BlockTable < ApplicationRecord
  has_many :appointments

  def self.filter_blocks(id1, id2)
    BlockTable.all.select do |block|
      block.id >= id1 && block.id <= id2
    end
  end

  def self.filter_blocks_with_time(blocks_array)
    self.filter_blocks()
  end


end
