.class public Lcom/ano/gshell/AnoApplication;
.super Landroid/app/Application;
.source "AnoApplication.java"


# static fields
.field static final IS_SELF_LOAD_DEX:Z

.field public static memoryLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "anort"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ano/gshell/AnoApplication;->memoryLoaders:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static native gp6ioctl(Ljava/lang/String;)V
.end method

.method public static native gp7ioctl(Ljava/lang/String;)V
.end method

.method public static native handleLoad(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public static native handleLoad([BII)Ljava/lang/Object;
.end method

.method public static native handleLoadV22([BII)J
.end method

.method public static native ioctl(ILjava/lang/String;)I
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/ano/gshell/AnoApplication;->attachBaseContextShell(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method protected attachBaseContextShell(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/ano/gshell/AnoApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 59
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 60
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 61
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/ano/gshell/AnoApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 65
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 67
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "splitSourceDirs"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 68
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    .line 82
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ano/gshell/AnoApplication;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "initialize failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    :cond_1
    return-void

    .line 70
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final native initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    return-void
.end method
