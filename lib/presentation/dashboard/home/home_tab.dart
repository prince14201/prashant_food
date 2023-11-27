import 'package:flutter/material.dart';
import 'package:prashant_food/data/home_food_data_model.dart';
import 'package:prashant_food/presentation/resources/color_manager.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeTab> {
  List<HomeFoodDataModel> foodList = [];

  @override
  void initState() {
    foodList = _getFoodList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _appBarView(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dine in',
              style: TextStyle(color: ColorManager.black),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: SizedBox(
                    height: 140,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(foodList[index].image ?? '',width: 70,height: 70,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(foodList[index].title ?? ''),
                              Text(foodList[index].description ?? '')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
            },itemCount: foodList.length,))
          ],
        ),
      ),
    ));
  }

   _appBarView(){
  return  AppBar(title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
        Icon(Icons.arrow_back,color: ColorManager.black,),
      Text('Micron Hyderabad Sky View',style: TextStyle(color: ColorManager.black),),
      Icon(Icons.notifications,color: ColorManager.black,),
    ],
  ),backgroundColor: ColorManager.white,elevation: 0,);
    
  }

  List<HomeFoodDataModel> _getFoodList(){
    List<HomeFoodDataModel> list = [];
      list.add(HomeFoodDataModel('Darshani','All Day South Indian Tiffin Restaurant operates Between 7:00 to 19:00',''));
      list.add(HomeFoodDataModel('Fruit It Up','Our selection of fresh fruits platters shakes and juices to perfectly complement food. Restaurant operates Between 7:00 to 19:00',''));
      list.add(HomeFoodDataModel('Snack Hub','The hub for anytime snacking. Restaurant operates Between 7:00 to 19:00',''));
      return list;
  }
}
