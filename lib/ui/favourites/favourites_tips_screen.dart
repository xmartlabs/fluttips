import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/favourites/favourites_tips_cubit.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class FavouritesTipsScreen extends StatelessWidget {
  const FavouritesTipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            FavouritesTipsCubit(context.read<ErrorHandlerCubit>()),
        child: _FavouritesTipsContentScreen(),
      );
}

class _FavouritesTipsContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FavouritesTipsCubit>();
    return BlocBuilder<FavouritesTipsCubit, FavouritesTipsBaseState>(
      builder: (context, state) => Column(
        children: [
          Center(
            child: Text(
              'My Favourites',
              style: TextStyle(
                color: context.theme.colors.primary.shade100,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 45.w),
              padding: EdgeInsets.symmetric(horizontal: 40.0.w),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 5,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: state.tips
                    .map(
                      (tip) => InkWell(
                        borderRadius: BorderRadius.circular(15.r),
                        onTap: () => cubit.change(tip),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.transparent,
                            border: Border.all(
                              color: context.theme.colors.primary.shade100,
                            ),
                          ),
                          child: Text(
                            tip.name,
                            textAlign: TextAlign.center,
                            style: context.theme.textStyles.bodySmall!.copyWith(
                              color: context.theme.colors.primary.shade100,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
