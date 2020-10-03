class CreateMentors < ActiveRecord::Migration[6.0]
  def change
    create_table :mentors do |t|
      t.string       :name,        null: false
      t.string       :email,       null: false
      t.string       :encrypted_password,        null: false
      t.string       :career,      null: false
      t.text         :profile,     null: false
      t.integer      :skill_id,    null: false
      t.timestamps
    end
  end
end
