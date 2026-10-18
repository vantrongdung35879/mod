.class public Lcom/ngame/resources/RD_Hooker;
.super Ljava/lang/Object;
.source "RD_Hooker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Resources"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HookNativeLibraryPathInApplication(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 15
    sput-object p0, Lcom/ngame/resources/RD_Path;->context:Landroid/app/Application;

    .line 17
    :try_start_0
    invoke-static {}, Lcom/ngame/resources/RD_Hooker;->hookNativeLibraryPath()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static hookNativeLibraryPath()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesInputPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ngame/resources/RD_FileHelper;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/ngame/resources/RD_Path;->getResourcesOutputABIPath()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hook library path\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Resources"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v1, Lcom/ngame/resources/RD_Path;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/ngame/resources/RD_ClassLoaderHooker;->installNativeLibraryPath(Ljava/lang/ClassLoader;Ljava/io/File;)V

    return-void
.end method
