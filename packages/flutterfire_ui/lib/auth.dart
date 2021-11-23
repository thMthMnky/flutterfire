export 'src/auth/widgets/auth_flow_builder.dart';
export 'src/auth/auth_controller.dart' show AuthAction, AuthController;
export 'src/auth/auth_state.dart'
    show
        AuthState,
        AuthStateListener,
        CredentialLinked,
        CredentialReceived,
        SignedIn,
        SigningIn,
        AuthFailed;
export 'src/auth/flows/phone_auth_flow.dart'
    show
        AwaitingPhoneNumber,
        PhoneAuthFlow,
        PhoneAuthController,
        PhoneVerificationFailed,
        PhoneVerified,
        SMSCodeRequested,
        SMSCodeSent;

export 'src/auth/widgets/phone_input.dart' show PhoneInputState, PhoneInput;
export 'src/auth/configs/phone_provider_configuration.dart'
    show PhoneProviderConfiguration;

export 'src/auth/widgets/sms_code_input.dart'
    show SMSCodeInputState, SMSCodeInput;

export 'src/auth/flows/email_flow.dart';

export 'src/auth/flows/oauth_flow.dart' show OAuthController, OAuthFlow;

export 'src/auth/oauth/social_icons.dart' show SocialIcons;
export 'src/auth/oauth/provider_resolvers.dart'
    show providerIcon, providerIconFromString, isOAuthProvider, providerIdOf;
export 'src/auth/oauth/oauth_providers.dart'
    show Google, Apple, Twitter, Facebook, OAuthHelpers;

export 'src/auth/widgets/auth_flow_builder.dart';
export 'src/auth/widgets/email_form.dart' show EmailForm;
export 'src/auth/widgets/error_text.dart' show ErrorText;
export 'src/auth/widgets/phone_verification_button.dart'
    show PhoneVerificationButton;

export 'src/auth/widgets/internal/oauth_provider_button.dart'
    show OAuthProviderButton, OAuthProviderIconButton, ButtonVariant;

export 'src/auth/widgets/sign_out_button.dart';
export 'src/auth/widgets/user_avatar.dart';
export 'src/auth/widgets/editable_user_display_name.dart';
export 'src/auth/widgets/delete_account_button.dart';
export 'src/auth/widgets/email_input.dart';
export 'src/auth/widgets/password_input.dart';
export 'src/auth/widgets/forgot_password_button.dart';

export 'src/auth/views/login_view.dart';
export 'src/auth/views/phone_input_view.dart';
export 'src/auth/views/sms_code_input_view.dart';
export 'src/auth/views/reauthenticate_view.dart';
export 'src/auth/views/forgot_password_view.dart';

export 'src/auth/screens/phone_input_screen.dart';
export 'src/auth/screens/sms_code_input_screen.dart';
export 'src/auth/screens/sign_in_screen.dart';
export 'src/auth/screens/register_screen.dart';
export 'src/auth/screens/profile_screen.dart';
export 'src/auth/screens/forgot_password_screen.dart';

export 'src/auth/navigation/phone_verification.dart';
export 'src/auth/navigation/forgot_password.dart';

export 'src/auth/configs/email_provider_configuration.dart';
export 'src/auth/configs/phone_provider_configuration.dart';
export 'src/auth/configs/oauth_provider_configuration.dart';