#include "PackageInfoPlugin.h"

// Must be before VersionHelpers.h
#include <windows.h>
#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

namespace
{
    class DesktopPackageInfoPlugin : public flutter::Plugin
    {
    public:
        static void RegisterWithRegistrar(flutter::PluginRegistrar *registrar);

        virtual ~DesktopPackageInfoPlugin();

    private:
        DesktopPackageInfoPlugin();
    };

} // namespace