import 'package:aflamak_app/cubits/Get_Trending/get_trending_cubit.dart';
import 'package:aflamak_app/widgets/Show_CategoryMovie_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewTrending extends StatelessWidget {
  const ListViewTrending({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GetTrendingCubit>().trending();
    return SizedBox(
        height: 205,
        child:
         BlocBuilder<GetTrendingCubit, GetTrendingState>(
           
          builder: (context, state) {
           
            if (state is GetTrending) {
              return 
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 
                state.categoryModelTrend.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 5
                    ),
                    child: ShowCategoryWidget(
                      categoryModel: state.categoryModelTrend[index],
                    ),
                  );
                },
              )
              ;
            } else if (state is GetTrendingFaluire) {
              return Center(
                child: Text('error ${state.errorMessage}'),
              );
            } else if (state is GetTrendingLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else {
              return const SizedBox();
            }
          },
        )
        );
  }
}
