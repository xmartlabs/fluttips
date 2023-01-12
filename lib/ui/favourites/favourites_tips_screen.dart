import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttips/ui/common/context_extensions.dart';
import 'package:fluttips/ui/section/error_handler/error_handler_cubit.dart';
import 'package:fluttips/ui/favourites/favourites_tips_cubit.dart';
import 'package:fluttips/ui/theme/app_theme.dart';
import 'package:fluttips/ui/favourites/display_list_favorites_tips_screen.dart';

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
        margin: EdgeInsets.symmetric(horizontal: 45.w),
        padding: EdgeInsets.symmetric(horizontal: 40.0.w),
        child: state.tips.isEmpty
            ? emptyFavouriteScreen(context)
            : displayFavouritesTips(state, cubit, context),
      ),
    );
  }

  Column displayFavouritesTips(
    FavouritesTipsBaseState state,
    FavouritesTipsCubit cubit,
    BuildContext context,
  ) =>
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            alignment: Alignment.centerLeft,
            child: Text(
              context.localizations.myFavorites,
              style: context.theme.textStyles.titleLarge!.copyWith(
                color: context.theme.colors.primary.shade100,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
          ),
        ],
      );

  Center emptyFavouriteScreen(BuildContext context) => Center(
        child: Container(
          width: .5.sw,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 35.h),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                context.localizations.myFavorites,
                style: context.theme.textStyles.titleMedium!.copyWith(
                  color: context.theme.colors.surface.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.start,
                  context.localizations.firstMessageEmptyFavoritesScreen,
                  style: context.theme.textStyles.bodyMedium!.copyWith(
                    color: context.theme.colors.surface.shade600,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.start,
                  context.localizations.secondMessageEmptyFavoritesScreen,
                  style: context.theme.textStyles.bodyMedium!.copyWith(
                    color: context.theme.colors.surface.shade600,
                  ),
                ),
              ),
              SizedBox(
                width: 190.w,
                height: 190.h,
                child: Image.asset('assets/images/onboarding_favourite.png'),
              ),
            ],
          ),
        ),
      );
}
