class Question < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    
    validates :name, presence: { message: "이름을 입력해주세요"}
    validates :content, presence: { message: "질문을 입력해주세요"}
end
