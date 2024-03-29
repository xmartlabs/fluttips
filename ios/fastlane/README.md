fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

### sh_on_root

```sh
[bundle exec] fastlane sh_on_root
```



### fetch_dependencies

```sh
[bundle exec] fastlane fetch_dependencies
```

**Fetch flutter dependencies**

### build_autogenerated_code

```sh
[bundle exec] fastlane build_autogenerated_code
```

**Generate flutter generated code**

### lint_format

```sh
[bundle exec] fastlane lint_format
```

**Lint: Check code format**

### lint_analyze

```sh
[bundle exec] fastlane lint_analyze
```

**Lint: Analyze code**

### lints

```sh
[bundle exec] fastlane lints
```

**Run linters**

### ensure_no_change_in_generated_code

```sh
[bundle exec] fastlane ensure_no_change_in_generated_code
```

**Check generated code is fine**

### tests

```sh
[bundle exec] fastlane tests
```

**Run tests**

### clean_up

```sh
[bundle exec] fastlane clean_up
```

**Clean up project**

### build_flutter

```sh
[bundle exec] fastlane build_flutter
```



----


## iOS

### ios build_ipa_dev

```sh
[bundle exec] fastlane ios build_ipa_dev
```

**Build dev debug app**

### ios set_signing

```sh
[bundle exec] fastlane ios set_signing
```

Creates a temporal keystore and import the distribution certificate

#### Envs
* **`TEMP_KEYCHAIN_NAME`**: The temporal keychain name
* **`TEMP_KEYCHAIN_PASSWORD`**: The temporal keychain password
* **`DIST_CERTIFICATE_PATH`**: The distribution certificate file path.
* **`DIST_CERTIFICATE_PASSWORD`**: The distribution certificate file password. If you are using a cert file this file is not necessary.

### ios generate_release_ipa

```sh
[bundle exec] fastlane ios generate_release_ipa
```

Build deploy version

#### Envs:
* **`env`**: Environment to build. Default 'prod'
* **`build_export_method`**: Export metod to generate the ipa. Default 'app-store'.
* **`setup_signing`**: if true, `set_signing` is called.
* **`APPLE_TEAM_ID`**: The apple team id
* **`APPSTORE_CONNECT_API_KEY_ID`**: The connect api key id
* **`APPSTORE_CONNECT_API_KEY_ISSUER_ID`**: The connect api key issuer id
* **`APPSTORE_CONNECT_API_KEY_BASE_64_CONTENT`**: The api key base64 content

### ios publish_dev_firebase

```sh
[bundle exec] fastlane ios publish_dev_firebase
```

Push a new beta build to Firebase

#### Envs:
* **`setup_signing`**: if true, `set_signing` is called.
* **`APPLE_TEAM_ID`**: The apple team id
* **`APPSTORE_CONNECT_API_KEY_ID`**: The connect api key id
* **`APPSTORE_CONNECT_API_KEY_ISSUER_ID`**: The connect api key issuer id
* **`APPSTORE_CONNECT_API_KEY_BASE_64_CONTENT`**: The api key base64 content

### ios publish_prod_testflight

```sh
[bundle exec] fastlane ios publish_prod_testflight
```

Push a new beta build to TestFlight

#### Envs:
* **`setup_signing`**: if true, `set_signing` is called.
* **`APPLE_TEAM_ID`**: The apple team id
* **`APPSTORE_CONNECT_API_KEY_ID`**: The connect api key id
* **`APPSTORE_CONNECT_API_KEY_ISSUER_ID`**: The connect api key issuer id
* **`APPSTORE_CONNECT_API_KEY_BASE_64_CONTENT`**: The api key base64 content

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
