## Findings summary

### gitleaks

1 false positive. `keyCycleOscillator6 = keyCycleOscillator5;`

### apkurlgrep

Found 1 URL: https://epycorp-ep.prismhr.com/apis/ep/peos?fwdClientCode=

Seems to be used with a URL parameter. We could probably fuzz the `fwdClientCode` parameter.

### Snyk SAST

10 Medium, 5 Low

Nothing significant.

### jadx

Nothing significant.

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