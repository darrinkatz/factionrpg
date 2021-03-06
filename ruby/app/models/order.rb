class Order < ActiveRecord::Base
  belongs_to :turn
  belongs_to :asset
  belongs_to :target, class_name: "Asset"

  ACTION_TYPES = ["Attack"]

  def calculate_result
    if asset.value > target.value
      self.result = :success
    else
      self.result = :failure
    end
  end
end
