# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8


StayObject.create(content: "1泊")
StayObject.create(content: "2泊")
StayObject.create(content: "3泊")
StayObject.create(content: "4泊")
StayObject.create(content: "5泊")
StayObject.create(content: "6泊")
StayObject.create(content: "7泊")

DaysObject.create(content: "2日")
DaysObject.create(content: "3日")
DaysObject.create(content: "4日")
DaysObject.create(content: "5日")
DaysObject.create(content: "6日")
DaysObject.create(content: "7日")
DaysObject.create(content: "8日")
DaysObject.create(content: "8日")

WhoObject.create(content: "ひとり")
WhoObject.create(content: "友達(2人)")
WhoObject.create(content: "友達(3人以上)")
WhoObject.create(content: "カップル")
WhoObject.create(content: "夫婦")
WhoObject.create(content: "家族")

TotalMoneyObject.create(content: "5,000円未満")
TotalMoneyObject.create(content: "5,001~10,000円")
TotalMoneyObject.create(content: "10,001~15,000円")
TotalMoneyObject.create(content: "15,001~20,000円")
TotalMoneyObject.create(content: "20,001~25,000円")
TotalMoneyObject.create(content: "25,001~30,000円")
TotalMoneyObject.create(content: "30,001~35,000円")
TotalMoneyObject.create(content: "5,001~40,000円")
TotalMoneyObject.create(content: "40,001~45,000円")
TotalMoneyObject.create(content: "45,001~50,000円")
TotalMoneyObject.create(content: "50,001~75,000円")
TotalMoneyObject.create(content: "75,001~100,000円")
TotalMoneyObject.create(content: "100,001~199,999円")
TotalMoneyObject.create(content: "200,000円~")