import 'package:aflamak_app/cubits/Get_Trending/get_trending_cubit.dart';
import 'package:aflamak_app/widgets/Show_CategoryMovie_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeallTrending extends StatelessWidget {
  const SeeallTrending({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    BlocBuilder<GetTrendingCubit, GetTrendingState>(
      builder: (context, state) {
        if (state is GetTrending) {
          return
     SliverGrid(
            delegate: SliverChildBuilderDelegate(
                childCount:
                // 50,
                 state.categoryModelTrend.length,
                (context, index) {
              return Padding(
                 padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                child: ShowCategoryWidget(
                  categoryModel: state.categoryModelTrend[index],
                ),
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .600,
            ),
          )
          ;
        } else if (state is GetTrendingFaluire) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Error: ${state.errorMessage}',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        } else if (state is GetTrendingLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: SizedBox());
        }
      },
    )

  ;
  }
}