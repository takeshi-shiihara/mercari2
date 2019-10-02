class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable
devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
      validates :nickname, :first_name, :last_name, :first_name_kana, :last_name_kana, presence: true
      has_one :phone_number
      has_one :address
      has_many :sns_credentials, dependent: :destroy

      def self.find_oauth(auth)
            uid = auth.uid
            provider = auth.provider
            snscredential = SnsCredential.where(uid: uid, provider: provider).first

            if snscredential.present? #sns登録のみ完了してるユーザー
                  user = User.where(id: snscredential.user_id).first
                  unless user.present? #ユーザーが存在しないなら
                  user = User.new(
                  nickname: auth.info.name,
                  email: User.dummy_email(auth),
                  )
                  end
                  sns = snscredential
            
            else #sns登録 未
                  user = User.new(
                  nickname: auth.info.name,
                  email: User.dummy_email(auth),
                  )
                  sns = SnsCredential.create(
                  uid: uid,
                  provider: provider
                  )
            end
      return { user: user , sns_id: sns.id }
      end

      private

      def self.dummy_email(auth)
            "#{auth.uid}-#{auth.provider}@example.com"
      end
end