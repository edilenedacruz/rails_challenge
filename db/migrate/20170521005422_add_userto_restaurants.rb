class AddUsertoRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_reference :restaurants, :user, index: true
  end
end
