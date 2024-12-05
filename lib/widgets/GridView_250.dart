import 'package:aflamak_app/cubits/Get_250/get250_cubit.dart';
import 'package:aflamak_app/widgets/Show_CategoryMovie_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridViewTop250 extends StatelessWidget {
  const GridViewTop250({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<Get250Cubit>().top250();
    return BlocBuilder<Get250Cubit, Get250State>(
      builder: (context, state) {
        if (state is GetTop250) {
          return SliverGrid(
            delegate: SliverChildBuilderDelegate(
                childCount:
                    // 50,
                    state.categoryModelTop250.length, (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child: ShowCategoryWidget(
                  categoryModel: state.categoryModelTop250[index],
                ),
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .600,
            ),
          );
        } else if (state is GetTop250Faluire) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Error: ${state.errorMessage}',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        } else if (state is GetTop250Loading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: SizedBox());
        }
      },
    );
  }
}
