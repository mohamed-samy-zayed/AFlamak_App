import 'package:aflamak_app/cubits/Get_BoxOffice/get_box_office_cubit.dart';
import 'package:aflamak_app/widgets/Show_CategoryMovie_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBoxOffice extends StatelessWidget {
  const ListViewBoxOffice({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GetBoxOfficeCubit>().getBoxoffice();
    return SizedBox(
        height: 205,
        child:
         BlocBuilder<GetBoxOfficeCubit, GetBoxOfficeState>(
           
          builder: (context, state) {
           
            if (state is GetBoxoffice) {
              return 
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 
                // 10,
                 state.boxOfficeModel.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ShowCategoryWidget(
                      categoryModel: state.boxOfficeModel[index],
                    ),
                  );
                },
              )
              ;
            } else if (state is GetBoxofficeFaluire) {
              return Center(
                child: Text('error ${state.errorMessage}'),
              );
            } else if( state is GetBoxofficeLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return const  SizedBox();
            }
          },
        )
        );
  }
}
