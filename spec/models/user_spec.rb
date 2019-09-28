require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "織田", last_name: "信長", first_name_kana: "おだ", last_name_kana: "のぶなが")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
  end
end

  describe User do
    describe '#create' do
      it "is invalid without a email" do
        user = User.new(nickname: "マッキー", email: "", password: "00000000", password_confirmation: "00000000", first_name: "織田", last_name: "信長", first_name_kana: "おだ", last_name_kana: "のぶなが")
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end
    end
end

describe User do
  describe '#create' do
    it "is invalid without a password" do
      user = User.new(nickname: "マッキー", email: "kkk@gmail.com", password: "", password_confirmation: "00000000", first_name: "織田", last_name: "信長", first_name_kana: "おだ", last_name_kana: "のぶなが")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
  end
end

describe User do
  describe '#create' do
    it "is invalid without a first_name" do
      user = User.new(nickname: "マッキー", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "", last_name: "信長", first_name_kana: "おだ", last_name_kana: "のぶなが")
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end
  end
end

describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = User.new(nickname: "マッキー", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "織田", last_name: "", first_name_kana: "おだ", last_name_kana: "のぶなが")
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end
  end
end

describe User do
  describe '#create' do
    it "is invalid without a first_name" do
      user = User.new(nickname: "マッキー", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "", last_name: "信長", first_name_kana: "", last_name_kana: "のぶなが")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("can't be blank")
    end
  end
end

describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = User.new(nickname: "マッキー", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000", first_name: "織田", last_name: "信長", first_name_kana: "おだ", last_name_kana: "")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("can't be blank")
    end
  end
end
