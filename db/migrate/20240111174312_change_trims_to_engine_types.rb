class ChangeTrimsToEngineTypes < ActiveRecord::Migration[7.1]
  def change
    rename_column :models, :trims, :body_styles
  end
end
