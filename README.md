# React Native Zendesk SDK

Zopim Chat from Zendesk for React Native.

## Getting started

`$ yarn add https://github.com/laundrapp/SDK-RN-Zendesk.git`

## iOS install

`$ cd ios && pod install`

## Setup

### Android

Configure `ZopimChat` in `android/app/main/java/[...]/MainActivity.java`

```
ZopimChat.init("YOUR_ZENDESK_ACCOUNT_KEY").build();
```

```
Add  maven { url 'https://zendesk.jfrog.io/zendesk/repo' } in build.gradle repository (android level not app level)
```

### IOS

Configure `ZDCChat` in `AppDelegate.m`:

```
#import <ZDCChat/ZDCChat.h>

[ZDCChat initializeWithAccountKey:@"YOUR_ZENDESK_ACCOUNT_KEY"];
```

## Usage

```javascript
import RnZendesk from "react-native-rn-zendesk";

RnZendesk.startChat({
  name: user.full_name,
  email: user.email,
  phone: user.mobile_phone,
  tags: ["tag1", "tag2"],
  department: "Your department",
});
```
