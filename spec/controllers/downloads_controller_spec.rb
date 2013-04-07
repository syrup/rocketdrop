require 'spec_helper'

describe DownloadsController do

  describe "#new" do
    before { get :new }

    it { should respond_with 200 }
    it { should assign_to(:download) }
  end

  describe "#create" do
    before { post :create, :download => download }

    context "valid new download" do
      let(:download) { FactoryGirl.attributes_for :download }

      it { should assign_to(:download) }
      it { should respond_with 302 }
      it { should redirect_to new_download_path }
      it { should set_the_flash }
    end

    context "invalid new download" do
      let(:download) { FactoryGirl.attributes_for(:wrong_download) }

      it { should set_the_flash }
    end
  end
end
