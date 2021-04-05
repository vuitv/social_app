import 'ui/screen/auth/login_screen.dart';
import 'ui/screen/auth/register_screen.dart';
import 'ui/screen/auth/welcome_screen.dart';
import 'ui/screen/browse/create_post_screen.dart';
import 'ui/screen/call/video_call_screen.dart';
import 'ui/screen/call/voice_call_screen.dart';
import 'ui/screen/chats/chat_room_screen.dart';
import 'ui/screen/chats/chats_screen.dart';
import 'ui/screen/followers/followers_screen.dart';
import 'ui/screen/home_bottom_bar.dart';
import 'ui/screen/profile/profile_screen.dart';
import 'ui/screen/profile/user_profile_screen.dart';
import 'ui/screen/splash_screen.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    SplashScreen.route,
    WelcomeScreen.route,
    LoginScreen.route,
    RegisterScreen.route,
    HomeBottomBar.route,
    ProfileScreen.route,
    UserProfileScreen.route,
    FollowersScreen.route,
    ChatsScreen.route,
    ChatRoomScreen.route,
    VoiceCallScreen.route,
    VideoCallScreen.route,
    CreatePostScreen.route,
  ];
}
