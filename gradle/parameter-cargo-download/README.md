Basic config of gradle file
===========================

Required in build.gradle
------------------------

```gradle
buildscript {
    repositories {
        mavenCentral()
    }

    dependencies {
        classpath 'org.gradle.api.plugins:gradle-cargo-plugin:0.5.7'
    }
}
```

Then you can include other files for cargo
