require 'rails_helper'

s_success = FactoryBot.build(:s)
s_no_title = FactoryBot.build(:s_no_title)
s_early_start_date = FactoryBot.build(:s_early_start_date)
s_19_titles = FactoryBot.build(:s_19_titles)
s_20_titles = FactoryBot.build(:s_20_titles)
s_21_titles = FactoryBot.build(:s_21_titles)
s_500_memo = FactoryBot.build(:s_500_memo)
s_501_memo = FactoryBot.build(:s_501_memo)

RSpec.describe Schedule, type: :model do
  describe "not_null判定" do
    context "必要項目が揃っている" do
      it "is able to save" do
        expect(s_success).to be_valid
      end
    end
    context "タイトルがない" do
      it "is able to save" do
        expect(s_no_title).not_to be_valid
      end
    end
  end
  describe "save判定" do
    context "開始日時が終了日時より早い" do
      it "is not able to save" do
        expect(s_early_start_date).not_to be_valid
      end
    end
    context "タイトル文字数が適正である" do
      it "is able to save" do
        expect(s_19_titles).to be_valid
      end
      it "is able to save" do
        expect(s_20_titles).to be_valid
      end
    end
    context "タイトル文字数が超過している" do
      it "is not able to save" do
        expect(s_21_titles).not_to be_valid
      end
    end
    context "メモ文字数が適正である" do
      it "is able to save" do
        expect(s_500_memo).to be_valid
      end
    end
    context "メモ文字数が超過している" do
      it "is not able to save" do
        expect(s_501_memo).not_to be_valid
      end
    end
  end
end