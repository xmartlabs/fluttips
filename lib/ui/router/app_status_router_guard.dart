import 'package:auto_route/auto_route.dart';
import 'package:dartx/dartx.dart';
import 'package:fluttips/core/model/onboarding_status.dart';
import 'package:fluttips/core/repository/session_repository.dart';
import 'package:fluttips/ui/app_router.dart';

class _AppSessionStatusGuard extends AutoRedirectGuard {
  final SessionRepository _sessionRepository;
  final AppSessionStatus _requiredAppStatus;
  final PageRouteInfo _redirectPage;

  _AppSessionStatusGuard(
    this._requiredAppStatus,
    this._redirectPage,
    this._sessionRepository,
  ) {
    _sessionRepository.getSessionStatus().distinct().listen(
          (event) => reevaluate(
            strategy: ReevaluationStrategy.removeAllAndPush(_redirectPage),
          ),
        );
  }

  @override
  Future<bool> canNavigate(RouteMatch route) => _sessionRepository
      .getSessionStatus()
      .first
      .then((value) => value == _requiredAppStatus);

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      switch (resolver.pendingRoutes.lastOrNull?.name) {
        case PrivacyPolicyRoute.name:
          redirect(PrivacyPolicyRoute(), resolver: resolver);
          break;
        case TermsAndConditionsRoute.name:
          redirect(TermsAndConditionsRoute(), resolver: resolver);
          break;
        default:
          redirect(_redirectPage, resolver: resolver);
      }
    }
  }
}

class NotOnboardedGuard extends _AppSessionStatusGuard {
  NotOnboardedGuard(SessionRepository sessionRepository)
      : super(
          AppSessionStatus.notOnboarded,
          const UserOnboardedRouter(),
          sessionRepository,
        );
}

class OnboardedGuard extends _AppSessionStatusGuard {
  OnboardedGuard(SessionRepository sessionRepository)
      : super(
          AppSessionStatus.onboarded,
          const UncompletedOnboardingRouter(),
          sessionRepository,
        );
}
