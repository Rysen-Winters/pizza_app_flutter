# Fix WelcomeScreen implementation

The current `WelcomeScreen` only contains a `Placeholder` widget, which is why it's not showing any functional UI. Based on the tutorial linked, this screen should have a TabBar to switch between "Sign In" and "Sign Up" forms, with a decorative background.

## Proposed Changes

### Auth Screens

#### [welcome_screen.dart](file:///D:/Proyectos/comp_movil_tp4b/pizza_app/lib/screens/auth/views/welcome_screen.dart)

- Replace `Placeholder` with a `Scaffold` containing:
    - A `Stack` for background decoration (colored circles with blur).
    - A `DefaultTabController` with two tabs: "Welcome" (Login) and "Sign Up".
    - `TabBarView` to hold the login and register forms.

#### [NEW] [sign_in_screen.dart](file:///D:/Proyectos/comp_movil_tp4b/pizza_app/lib/screens/auth/views/sign_in_screen.dart)
- Create a reusable widget for the Sign In form.
- Include email and password fields.
- Add a "Sign In" button.

#### [NEW] [sign_up_screen.dart](file:///D:/Proyectos/comp_movil_tp4b/pizza_app/lib/screens/auth/views/sign_up_screen.dart)
- Create a reusable widget for the Sign Up form.
- Include name, email, and password fields.
- Add a "Sign Up" button.

### Components

#### [NEW] [my_text_field.dart](file:///D:/Proyectos/comp_movil_tp4b/pizza_app/lib/components/my_text_field.dart)
- A reusable custom text field consistent with the tutorial's design.

## Verification Plan

### Manual Verification
- Run the app on an Android Emulator.
- Verify that `WelcomeScreen` shows up with the background and TabBar.
- Verify that switching tabs works.
- (Future) Test login/registration once Firebase is fully configured with `google-services.json`.
