require 'spec_helper'

describe DownloadsController do

  describe "#new" do
    before { get :new }

    it { should respond_with 200 }
    it { should assign_to :download }
  end

  describe "#show" do
    before { get :show, :id => download_id }

    context "valid download" do
      let(:download_id) { FactoryGirl.create :download }

      it { should respond_with 200 }
      it { should assign_to :download }
    end

    context "invalid download" do
      let(:download_id) { 0 }
      it { should respond_with 302 }
    end
  end

  describe "#create" do
    before { post :create, :download => download }

    context "valid new download" do
      let(:download) { FactoryGirl.attributes_for :download }

      it { should assign_to :download }
      it { should respond_with 302 }
      it { should redirect_to new_download_path }
      it { should set_the_flash }
    end

    context "invalid new download" do
      let(:download) { FactoryGirl.attributes_for :wrong_download }

      it { should set_the_flash }
    end
  end
end
