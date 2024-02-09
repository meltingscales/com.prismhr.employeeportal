## Findings summary

### gitleaks

TODO

### apkurlgrep

TODO

### Snyk SAST

TODO

### jadx

TODO

## Commands

```
adb shell pm path com.prismhr.employeeportal

adb pull /data/app/~~c5iUqd7bYj_VsUfXC1d38A==/com.prismhr.employeeportal-bxjbOFDVVNfky_2ak0ryiA==/base.apk

mv base.apk com.prismhr.employeeportal.apk

~/go/bin/apkurlgrep -a com.prismhr.employeeportal.apk > apkurlgrep.txt

apktool d com.prismhr.employeeportal.apk

echo "Run jadx-gui, open the APK, and save to "./jadx/"

echo "Make sure to make a commit so gitleaks can work..."

gitleaks detect --report-path gitleaks.json
```