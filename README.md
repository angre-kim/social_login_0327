# social_login_note0327

# 1. flutter_naverlogin_plugin

1. https://developers.naver.com/ 에서 개발자 등록 및 app 등록

2. android>app>src>main>res>values 폴더에 strings.xml 파일 생성 후 아래와 같이 입력


strings.xml 에서
```<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="client_id">***</string>
    <string name="client_secret">***</string>
    <string name="client_name">***</string>
</resources>
```
3. android>app>src>main 폴더에 있는  AndroidManifest.xml에서 아래 내용 추가

```
        <meta-data
            android:name="com.naver.sdk.clientId"
            android:value="@string/client_id" />
        <meta-data
            android:name="com.naver.sdk.clientSecret"
            android:value="@string/client_secret" />
        <meta-data
            android:name="com.naver.sdk.clientName"
            android:value="@string/client_name" />
```
4. pubspec.yaml에서 package get

```flutter_naver_login: ^1.1.1```

5. 로그인 제작 페이지에서 
```import 'package:flutter_naver_login/flutter_naver_login.dart'; ``` 한후

```

onPressed: () {
  FlutterNaverLogin.logIn();
},
```


# 2. flutter_kakao_login_plugin

1. https://developers.kakao.com/apps 에서 개발자 등록 및 app 등록

2. android>app>src>main>res>values 폴더에 kakao_strings.xml 파일 생성 후 아래와 같이 입력


kakao_strings.xml 에서
```<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="kakao_app_key">***</string>
</resources>
```
3. android>app>src>main 폴더에 있는  AndroidManifest.xml에서 아래 내용 추가

```<uses-permission android:name="android.permission.INTERNET"/>
       .....
       
       <meta-data
           android:name="com.kakao.sdk.AppKey"
           android:value="@string/kakao_app_key" />
       .....
```
4. pubspec.yaml에서 package get

```flutter_kakao_login: ^0.8.1```

5. 로그인 제작 페이지에서 
```import 'package:flutter_kakao_login/flutter_kakao_login.dart'; ``` 한후

```

onPressed: () {
  FlutterKakaoLogin().logIn();
},
```

# 3. flutter_facebook_login_plugin

1. https://developers.facebook.com/docs/facebook-login/android 에서 개발자 등록 및 app 등록

2. android>app>src>main>res>values 폴더에 strings.xml 파일 생성 후 아래와 같이 입력


strings.xml 에서
```<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">***</string>
    <string name="facebook_app_id">***</string>
    <string name="fb_login_protocol_scheme">***</string>

</resources>
```
3. android>app>src>main 폴더에 있는  AndroidManifest.xml에서 아래 내용 추가

```
        <meta-data
            android:name="com.facebook.sdk.ApplicationId"
            android:value="@string/facebook_app_id"/>
        <activity android:name="com.facebook.FacebookActivity"
            android:configChanges= "keyboard|keyboardHidden|screenLayout|screenSize|orientation"
            android:label="@string/app_name" />
        <activity android:name="com.facebook.CustomTabActivity"
            android:exported="true">
            <intent-filter> <action android:name="android.intent.action.VIEW" /> <category android:name="android.intent.category.DEFAULT" /> <category android:name="android.intent.category.BROWSABLE" /> <data android:scheme="@string/fb_login_protocol_scheme" /> </intent-filter> </activity>

```
4. pubspec.yaml에서 package get

``` flutter_facebook_login: ^1.2.0```

5. 로그인 제작 페이지에서 
```import 'package:flutter_facebook_login/flutter_facebook_login.dart'; ``` 한후

```

 onPressed: () {
  FacebookLogin().logIn(['email']);
 },
```


![Screenshot_1585284176](https://user-images.githubusercontent.com/53202507/77722470-2aae5d00-7031-11ea-8035-dd956f6b91aa.png)
