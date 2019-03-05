class Addcolumntweet < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :department, :string
    add_column :tweets, :subject, :string
    add_column :tweets, :laboratory, :string
    add_column :tweets, :field, :string
    add_column :tweets, :star, :integer
    add_column :tweets, :coretime, :string
  end
end
