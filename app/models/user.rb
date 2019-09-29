class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook]
      validates :nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, presence: true
      has_one :phone_number
      has_one :address


      def self.from_omniauth(auth)
            #providerとuidで検索して、データが存在していればデータを保存するようにする
            where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
            user.provider = auth.provider
            user.uid = auth.uid
            user.nickname = auth.name
            user.email = auth.email
            user.password = Devise.friendly_token[0, 20]
            binding.pry
      end
      end

end
