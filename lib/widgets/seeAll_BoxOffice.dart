import 'package:aflamak_app/cubits/Get_BoxOffice/get_box_office_cubit.dart';
import 'package:aflamak_app/widgets/Show_CategoryMovie_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeallBoxoffice extends StatelessWidget {
  const SeeallBoxoffice({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    BlocBuilder<GetBoxOfficeCubit, GetBoxOfficeState>(
      builder: (context, state) {
        if (state is GetBoxoffice) {
          return 
    SliverGrid(
            delegate: SliverChildBuilderDelegate(
                childCount:
                
                 state.boxOfficeModel.length,
                (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                child: ShowCategoryWidget(
                  
                  categoryModel: state.boxOfficeModel[index],
                ),
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .600,
            ),
          )
          ;
        } else if (state is GetBoxofficeFaluire) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Error: ${state.errorMessage}',
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        } else if (state is GetBoxofficeLoading) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: SizedBox());
        }
      },
     ) ;
  }
}