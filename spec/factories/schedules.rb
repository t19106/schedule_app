FactoryBot.define do
  factory :s, class: Schedule do
    title { "これはタイトルです。" }
    start_date { DateTime.yesterday }
    end_date { DateTime.now }
  end
  factory :s_no_title, class: Schedule do
    title { "" }
    start_date { DateTime.yesterday }
    end_date { DateTime.now }
  end
  factory :s_no_date, class: Schedule do
    title { "これはタイトルです。" }
  end
  factory :s_early_start_date, class: Schedule do
    title { "これはタイトルです。" }
    start_date { DateTime.now }
    end_date { DateTime.yesterday }
  end
  factory :s_19_titles, class: Schedule do
    title { "a" * 19 }
    start_date { DateTime.yesterday }
    end_date { DateTime.now }
  end
  factory :s_20_titles, class: Schedule do
    title { "a" * 20 }
    start_date { DateTime.yesterday }
    end_date { DateTime.now }
  end
  factory :s_21_titles, class: Schedule do
    title { "a" * 21 }
    start_date { DateTime.yesterday }
    end_date { DateTime.now }
  end
  factory :s_500_memo, class: Schedule do
    title { "これはタイトルです。" }
    start_date { DateTime.yesterday }
    end_date { DateTime.now }
    memo { "a" * 500 }
  end
  factory :s_501_memo, class: Schedule do
    title { "これはタイトルです。" }
    start_date { DateTime.yesterday }
    end_date { DateTime.now }
    memo { "a" * 501 }
  end
end
