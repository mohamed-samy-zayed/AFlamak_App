import 'package:aflamak_app/cubits/Get_cubit/get_cubit.dart';
import 'package:aflamak_app/widgets/Categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GetCubit>().getCategoryName();
    List<String> categoryList = [
      'assets/images/action.jpg',
      'assets/images/adventure.jpg',
      'assets/images/animation.jpg',
      'assets/images/biography.jpg',
      'assets/images/comedy.jpg',
      'assets/images/documentary.jpg',
      'assets/images/drama.jpg',
      'assets/images/family.jpg',
      'assets/images/fantasy.jpg',
      'assets/images/black and white.jpg',
      'assets/images/history.jpg',
      'assets/images/horror.jpg',
      'assets/images/music.jpg',
      'assets/images/musical.jpg',
      'assets/images/mystery.jpg',
      'assets/images/romance.jpg',
      'assets/images/scientific.jpg',
      'assets/images/sport.jpg',
      'assets/images/thriller.jpg',
      'assets/images/war.jpg',
      'assets/images/western.jpg',
    ];
    return SizedBox(
        height: 100,
        child:
         BlocBuilder<GetCubit, GetState>(
          builder: (context, state) {
            if (state is GetCategoryName) {
             
              return
               ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return Categories(
                    padding: 20,
                    title:  
                    state.categoryModel[index] ,
                    image: categoryList[index],
                    
                  );
                },
              )
              ;
            } else if (state is GetCategoryNameFaluire) {
              return Center(
                child: Text('error ${state.errorMessage}'),
              );
            } else if (state is GetCategoryNameLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const SizedBox();
            }
          },
        )
        );
  }
}
