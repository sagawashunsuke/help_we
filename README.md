# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ------------|
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :mentors
- has_many :orders dependent: :destroy


## mentors テーブル

| Column             | Type       | Options               |
| ------------------ | ---------- | --------------------- |
| user_id            | integer    | null: false, FK: true |
| name               | string     | null: false           |
| email              | string     | null: false           |
| encrypted_password | string     | null: false           |
| career             | string     | null: false           |
| profile            | text       | null: false           |
| skill_id           | integer    | null: false           |

### Association

- belongs_to :user
- has_one :order


## orders テーブル

| Column | Type       | Options               |
| ------ | ---------- | --------------------- |
| user   | references | null: false, FK: true |
| item   | references | null: false, FK: true |
| ticket | integer    | null: false           |

### Association

- belongs_to :user
- has_one :message dependent: :destroy
- belongs_to :mentor dependent: :destroy


## messages テーブル

| Column        | Type       | Options              |
| ------------- | ---------- | -------------------- |
| user_id       | integer    | null: false, FK:true |
| mentor_id     | integer    | null: false, FK:true |

### Association

- belongs_to :order dependent: :destroy