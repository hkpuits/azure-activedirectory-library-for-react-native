
# Active Directory Authentication Library (ADAL) plugin for React Native apps

Active Directory Authentication Library ([ADAL](https://msdn.microsoft.com/en-us/library/azure/jj573266.aspx)) plugin provides easy to use authentication functionality for your React Native apps by taking advantage of Windows Server Active Directory and Windows Azure Active Directory.

[![npm version](https://badge.fury.io/js/react-native-azure-adal.svg)](https://badge.fury.io/js/react-native-azure-adal)
---


## Inspired By
1. [ADAL for Cordova](https://github.com/AzureAD/azure-activedirectory-library-for-cordova/)
2. [ADAL for React Native](https://github.com/samcolby/react-native-ms-adal)

## Features
- Support Non-Broker and Broker Based Authentication for Android and iOS
- Consistent API between Android and iOS
- Promise-based JS API
- Easy to configure and Use

## Table of contents
- [Project setup and initialization](#project-setup-and-initialization)
- [Usage](#usage)
- [Example project](#example-project)
- [Contributing](#contributing)
- [Contact](#contact)
- [TODO](#todo)
- [Copyright and license](#copyright-and-license)

## Project setup and initialization

See [Android guide](setup/android.md) and [iOS guide](setup/ios.md)

## Usage

### Import

```bash
import AzureAdal from 'react-native-azure-adal';
```

### Public API  

1. **Configure**

	```javascript
	/**
     *
    * @param authority
    * @param validateAuthority
    * @param clientId
    * @param redirectUrl
    * @param useBroker if true, it will try to use broker based authentication only if broker is present
    */
    configure (authority: String, validateAuthority: Boolean, clientId: String,
	     redirectUrl: String, useBroker: Boolean)
	```
	
2. 	**Login**

	```javascript
	/**
    * let the user signin with azure ad credentials into your application,
    * if already logged in, it will not ask credentials again
    * @param resourceUrl
    * @param loginHint
    * @param extraQueryParameters
    * @returns Promise
    */
    login (resourceUrl: String, loginHint: String, extraQueryParameters: String)
	```
	
3. **login With LoginPrompt**

	```javascript
	/**
    * Prompt the modal to let the user signin with azure ad credentials into your application
    * @param resourceUrl
    * @param loginHint
    * @param extraQueryParameters
    * @returns Promise
    */
    loginWithPrompt (resourceUrl: String, loginHint: String, extraQueryParameters: String)
	```
	
4. **Get Token**

	```javascript
	/**
    * It will return you token
    * It will internally call acquireTokenSilentAsync of azure ad authentication context
    * Note:- One time logged in required
    * @param resourceUrl
    * @returns Promise
    */  
    getTokenAsync (resourceUrl: String)
	```
	
5. **Logout**

	```javascript
    /**
    * Sign out from your application
    */
    logout ()
	```
	
*Please refer example project for more details*	
## Example project

See the [example](https://github.com/Durgaprasad-Budhwani/azure-activedirectory-library-for-react-native/tree/master/example) project for a working example.

## Contributing

Just submit a pull request!

## Contact

Drop a mail to [durgaprasad.budhwani@gmail.com](mailto:durgaprasad.budhwani@gmail.com)

## Todo

- [ ] Integrate Azure AD Log
- [ ] Handle token caching in better way
- [ ] Unit Test Case
- [ ] Code Quality Integration tool - Eslint and Flow

## Copyright and license

Code released under the [Apache License](https://www.apache.org/licenses/LICENSE-2.0).