import 'package:aflamak_app/cubits/Get_By_Genere/get_by_genere_cubit.dart';
import 'package:aflamak_app/widgets/Show_CategoryMovie_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllByGener extends StatelessWidget {
  const SeeAllByGener({super.key, required this.gener});
  final String gener;
  @override
  Widget build(BuildContext context) {
    context.read<GetByGenereCubit>().getByGener(movieName: gener);
    return BlocBuilder<GetByGenereCubit, GetByGenereState>(
      builder: (context, state) {
        if (state is GetByGenereSucess) {
          return SliverGrid(
            delegate: SliverChildBuilderDelegate(
                childCount: state.getByGener.length, (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                child: ShowCategoryWidget(
                  categoryModel: state.getByGener[index],
                ),
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .600,
            ),
          );
        } else if (state is GetByGenereFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Error: ${state.errorMessage}',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        } else if (state is GetByGenereLoading) {
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
