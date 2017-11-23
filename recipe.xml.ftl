<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/Contract.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />

    <instantiate from="src/app_package/MvpActivity.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />

    <instantiate from="src/app_package/Presenter.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />

    <instantiate from="src/res/layout/mvp_databinding_activity.xml.ftl"
       to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityName}.xml" />

    <open file="${srcOut}/${className}Presenter.kt"/>
    <open file="${srcOut}/${className}Activity.kt"/>
    <open file="${srcOut}/${className}Contract.kt"/>
    <open file="${resOut}/layout/${layoutActivityName}.xml"/>
</recipe>
