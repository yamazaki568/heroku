require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      title: "MyString",
      author: "MyString",
      showing: false,
      price: 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[title]"

      assert_select "input[name=?]", "product[author]"

      assert_select "input[name=?]", "product[showing]"

      assert_select "input[name=?]", "product[price]"
    end
  end
end
