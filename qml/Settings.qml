import QtQuick 2.0

QtObject {
    readonly property string appName: qsTr("Harmattan")
    readonly property string appIcon: "../../appinfo.png"

    readonly property string iconAttributionHtml: qsTr("Released under the GNU GPLv3 license. Fonts: Nokia Pure UI typeface (Nokia); files from <a href='https://github.com/ExertisMicro-P/Bang-Nokia/tree/master/nokia/fonts/NokiaPure'>Bang-Nokia</a>. Icons: Nokia N9 / MeeGo Harmattan UI (Nokia); artwork from <a href='https://xdaforums.com/t/themes-adw-launcherpro-apk-nokia-n9-meego-harmattan-v1-3-update.1363692'>hpluslabels Harmattan pack</a> (XDA).")

    readonly property string creditsHtml: qsTr("<b>Fonts</b><br/>Visual design reference: Nokia Pure UI typeface, Nokia N9 / MeeGo Harmattan (Nokia).<br/>Font files (community): <a href='https://github.com/ExertisMicro-P/Bang-Nokia/tree/master/nokia/fonts/NokiaPure'>Bang-Nokia</a>.<br/><br/><b>Icons</b><br/>Visual design reference: Nokia N9 / MeeGo Harmattan UI (Nokia).<br/>Icon artwork (community): <a href='https://xdaforums.com/t/themes-adw-launcherpro-apk-nokia-n9-meego-harmattan-v1-3-update.1363692'>hpluslabels Harmattan pack</a> (XDA).")

    readonly property string sourcesUrl: "https://github.com/uithemer/harbour-themepack-harmattan"
    readonly property string docsUrl: "https://uithemer.github.io/harbour-muoto/docs/getstarted"
    readonly property string donateUrl: "https://liberapay.com/fravaccaro"
    readonly property string transifexUrl: "https://explore.transifex.com/fravaccaro/harmattan-theme"

    readonly property var translators: [
        { language: "Italiano", name: "fravaccaro" },
    ]

    readonly property string packInstallPath: "/usr/share/harbour-themepack-harmattan"
    readonly property string iconRequestEmail: "me@fravaccaro.com"
    readonly property string iconRequestSubject: qsTr("Icon request for Harmattan")
}
