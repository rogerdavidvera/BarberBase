class BlockTable < ApplicationRecord
  has_many :appointments

  def self.filter_blocks(id1, id2)
    BlockTable.all.select do |block|
      block.id < id1 && block.id > id2
    end
  end


end
