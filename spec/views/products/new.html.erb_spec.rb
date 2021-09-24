require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      title: "MyString",
      author: "MyString",
      showing: false,
      price: 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[title]"

      assert_select "input[name=?]", "product[author]"

      assert_select "input[name=?]", "product[showing]"

      assert_select "input[name=?]", "product[price]"
    end
  end
end
