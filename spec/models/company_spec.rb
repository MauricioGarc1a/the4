require 'rails_helper'

RSpec.describe "Companies", type: :request do
  let(:company){Company.create(name: "hai")}
  describe "GET /companies" do
    it "works! (now write some real specs)" do
      get companies_path
      expect(response).to have_http_status(200)
    end
  end
describe "GET /company:id" do
  it "works! (now write some real specs)" do
   get company_path(company)
   expect(response).to have_http_status(200)
  end
end
describe "DELETE /company/:id" do
  it "should destroy a company" do
    company
    expect{
      delete company_path(company)
    }.to change{Company.count}.by(-1)
    end
  end
end
