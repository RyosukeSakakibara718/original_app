# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




StayObject.create(stay_id: 1, content: "1泊")
StayObject.create(stay_id: 2, content: "2泊")
StayObject.create(stay_id: 3, content: "3泊")
StayObject.create(stay_id: 4, content: "4泊")
StayObject.create(stay_id: 5, content: "5泊")
StayObject.create(stay_id: 6, content: "6泊")
StayObject.create(stay_id: 7, content: "7泊")

DaysObject.create(days_id: 1, content: "2日")
DaysObject.create(days_id: 2, content: "3日")
DaysObject.create(days_id: 3, content: "4日")
DaysObject.create(days_id: 4, content: "5日")
DaysObject.create(days_id: 5, content: "6日")
DaysObject.create(days_id: 6, content: "7日")
DaysObject.create(days_id: 7, content: "8日")
DaysObject.create(days_id: 8, content: "8日")

WhosObject.create(who_id: 1, content: "ひとり")
WhosObject.create(who_id: 2, content: "友達(2人)")
WhosObject.create(who_id: 3, content: "友達(3人以上)")
WhosObject.create(who_id: 4, content: "カップル")
WhosObject.create(who_id: 5, content: "夫婦")
WhosObject.create(who_id: 6, content: "家族")

TotalMoneyObject.create(total_money_id: 1, content: "5,000円未満")
TotalMoneyObject.create(total_money_id: 1, content: "5,001~10,000円")
TotalMoneyObject.create(total_money_id: 1, content: "10,001~15,000円")
TotalMoneyObject.create(total_money_id: 1, content: "15,001~20,000円")
TotalMoneyObject.create(total_money_id: 1, content: "20,001~25,000円")
TotalMoneyObject.create(total_money_id: 1, content: "25,001~30,000円")
TotalMoneyObject.create(total_money_id: 1, content: "30,001~35,000円")
TotalMoneyObject.create(total_money_id: 1, content: "5,001~40,000円")
TotalMoneyObject.create(total_money_id: 1, content: "40,001~45,000円")
TotalMoneyObject.create(total_money_id: 1, content: "45,001~50,000円")
TotalMoneyObject.create(total_money_id: 1, content: "50,001~75,000円")
TotalMoneyObject.create(total_money_id: 1, content: "75,001~100,000円")
TotalMoneyObject.create(total_money_id: 1, content: "100,001~199,999円")
TotalMoneyObject.create(total_money_id: 1, content: "200,000円~")