import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/section/error_handler/error_handler_cubit.dart';
import 'package:flutter_template/ui/favourites/favourites_tips_cubit.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

import 'package:flutter_template/ui/favourites/display_list_favorites_tips_screen.dart';

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
      builder: (context, state) => Container(
        margin: EdgeInsets.only(left: 45.w),
        padding: EdgeInsets.symmetric(horizontal: 40.0.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              alignment: Alignment.centerLeft,
              child: Text(
                context.localizations.myFavorites,
                style: TextStyle(
                  color: context.theme.colors.primary.shade100,
                ),
              ),
            ),
            state.tips.isEmpty
                ? emptyFavouriteScreen(context)
                : displayFavouritesTips(state, cubit),
          ],
        ),
      ),
    );
  }

  Expanded displayFavouritesTips(
    FavouritesTipsBaseState state,
    FavouritesTipsCubit cubit,
  ) =>
      Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 5,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: state.tips
              .map(
                (tip) => DisplayListFavoritesTipsScreen(
                  tip: tip,
                  onTipAppendCallback: () => cubit.navigateToTip(tip),
                ),
              )
              .toList(),
        ),
      );

  Expanded emptyFavouriteScreen(BuildContext context) => Expanded(
        child: Center(
          child: Text(
            context.localizations.messageEmptyFavoritesScreen,
            style: context.theme.textStyles.titleLarge!.copyWith(
              color: context.theme.colors.surface.shade800,
            ),
          ),
        ),
      );
}
