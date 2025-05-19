import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.bagjunseong.aikivemobile.dev"
            resValue(type = "string", name = "app_name", value = "Dev App")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.bagjunseong.aikivemobile"
            resValue(type = "string", name = "app_name", value = "Prod App")
        }
    }
}