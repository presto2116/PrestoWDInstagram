class AddCaptionsToEntries < ActiveRecord::Migration
  def up
  	change_table :entries do |t|
  		t.text :captions
  	end
  end
end
