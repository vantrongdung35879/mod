.class public Lcom/ngame/resources/RD_ClassLoaderHooker;
.super Ljava/lang/Object;
.source "RD_ClassLoaderHooker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ngame/resources/RD_ClassLoaderHooker$V25;,
        Lcom/ngame/resources/RD_ClassLoaderHooker$V23;,
        Lcom/ngame/resources/RD_ClassLoaderHooker$V14;,
        Lcom/ngame/resources/RD_ClassLoaderHooker$V4;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassLoaderUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installNativeLibraryPath(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "folder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    const-string v0, "ClassLoaderUtils"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_3

    .line 39
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/ngame/resources/RD_ClassLoaderHooker$V25;->access$000(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    const-string v1, "installNativeLibraryPath, v25 fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0, p1}, Lcom/ngame/resources/RD_ClassLoaderHooker$V23;->access$100(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_0

    .line 46
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 48
    :try_start_1
    invoke-static {p0, p1}, Lcom/ngame/resources/RD_ClassLoaderHooker$V23;->access$100(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 51
    :catchall_1
    const-string v1, "installNativeLibraryPath, v23 fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p0, p1}, Lcom/ngame/resources/RD_ClassLoaderHooker$V14;->access$200(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_0

    .line 55
    :cond_4
    invoke-static {p0, p1}, Lcom/ngame/resources/RD_ClassLoaderHooker$V14;->access$200(Ljava/lang/ClassLoader;Ljava/io/File;)V

    :goto_0
    return-void

    .line 31
    :cond_5
    :goto_1
    const-string p0, "installNativeLibraryPath, folder is illegal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
