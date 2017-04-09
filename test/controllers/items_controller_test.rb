require "test_helper"

describe ItemsController do
  let(:item) { items :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    assert { session[:sample] == 1 }
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates item" do
    expect {
      post :create, params: { item: { amount: item.amount, memo: item.memo, name: item.name } }
    }.must_change "Item.count"

    must_redirect_to item_path(Item.last)
  end

  it "shows item" do
    session[:sample] = 'test'
    get :show, params: { id: item.id }
    value(response).must_be :success?
    assert { assigns[:session_sample] == 'test' }
  end

  it "gets edit" do
    get :edit, params: { id: item.id }
    value(response).must_be :success?
  end

  it "updates item" do
    patch :update, params: { id: item.id, item: { amount: item.amount, memo: item.memo, name: item.name } }
    must_redirect_to item_path(item)
  end

  it "destroys item" do
    expect {
      delete :destroy, params: { id: item.id }
    }.must_change "Item.count", -1

    must_redirect_to items_path
  end
end
