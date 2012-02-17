class CreateSupports < ActiveRecord::Migration

  def self.up
    create_table :supports do |t|
      t.string :title
      t.text :content
      t.integer :position

      t.timestamps
    end

    add_index :supports, :id

    load(Rails.root.join('db', 'seeds', 'supports.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "supports"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/supports"})
    end

    drop_table :supports
  end

end
