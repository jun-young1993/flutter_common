# setting_screen_layout

> info.plist

```plist
	<key>LSApplicationQueriesSchemes</key>
	<array>
		<string>https</string>
		<string>itms-apps</string>
		<string>itms-appss</string>
	</array>
```

> AndroidMainfest.yml

```yml
<queries>
<intent>
<action android:name="android.intent.action.PROCESS_TEXT"/>
<data android:mimeType="text/plain"/>
</intent>
<intent>
<action android:name="android.intent.action.VIEW" />
<data android:scheme="https" />
</intent>
<intent>
<action android:name="android.support.customtabs.action.CustomTabsService" />
</intent>
</queries>
```
