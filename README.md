
# AlamofireExample
This one Alamofire pod Example Program..

### MUST ADD
must add in info.plist :

```swift
<dict>
<key>NSAllowsArbitraryLoads</key>
<true/>
<key>NSExceptionDomains</key>
<dict>
<key>domain.com</key>
<dict>
<key>NSExceptionAllowsInsecureHTTPLoads</key>
<true/>
<key>NSIncludesSubdomains</key>
<true/>
</dict>
</dict>
</dict>
</plist>
```
