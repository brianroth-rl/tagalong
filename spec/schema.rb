ActiveRecord::Schema.define :version => 0 do
  create_table "tagalong_taggings", :force => true do |t|
    t.integer "tagalong_tag_id", :limit => 11
    t.integer "taggable_id", :limit => 11
    t.string "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tagalong_taggings", ["tagalong_tag_id"], :name => "index_tagalong_taggings_on_tagalong_tag_id"
  add_index "tagalong_taggings", ["taggable_id", "taggable_type"], :name => "index_tagalong_taggings_on_taggable_id_and_taggable_type"

  create_table "tagalong_tags", :force => true do |t|
    t.integer "tagger_id", :limit => 11
    t.string "tagger_type"
    t.string "name"
    t.integer "number_of_references", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tagalong_tags", ["tagger_id", "tagger_type"], :name => "index_tagalong_tags_on_tagger_id_and_tagger_type"

  create_table "contacts", :force => true do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at"
    t.datetime "udpated_at"
  end

  create_table "users", :force => true do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end
