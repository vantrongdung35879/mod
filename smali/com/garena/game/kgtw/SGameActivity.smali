.class public Lcom/garena/game/kgtw/SGameActivity;
.super Lcom/ngame/resources/ResourceDecompressActivity;
.source "SGameActivity.java"


# static fields
.field private static final STYLE_KEY:Ljava/lang/String; = "ngame.splash.style"

.field private static final TAG:Ljava/lang/String; = "SGameActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/ngame/resources/ResourceDecompressActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/garena/game/kgtw/SGameActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/garena/game/kgtw/SGameActivity;->md5RetryCount:I

    return p0
.end method

.method private getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aString"
        }
    .end annotation

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    const-string v1, "XXXX"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 202
    :goto_0
    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 205
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    return-object v1
.end method

.method public static getSystemVersion()I
    .locals 1

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static hideSystemUI(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 179
    invoke-static {}, Lcom/garena/game/kgtw/SGameActivity;->getSystemVersion()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 180
    const-string v0, "SGameActivity"

    const-string v1, "hideSystemUI start hide system ui"

    invoke-static {v0, v1}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1706

    .line 182
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private initForResourceDecompress()V
    .locals 1

    .line 43
    new-instance v0, Lcom/garena/game/kgtw/SGameActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/garena/game/kgtw/SGameActivity$1;-><init>(Lcom/garena/game/kgtw/SGameActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameActivity;->eventHandler:Lcom/ngame/resources/IResourceDecompressEventHandler;

    .line 79
    new-instance v0, Lcom/garena/game/kgtw/SGameActivity$2;

    invoke-direct {v0, p0}, Lcom/garena/game/kgtw/SGameActivity$2;-><init>(Lcom/garena/game/kgtw/SGameActivity;)V

    iput-object v0, p0, Lcom/garena/game/kgtw/SGameActivity;->viewProvider:Lcom/ngame/resources/IResourceDecompressViewProvider;

    .line 108
    const-class v0, Lcom/garena/game/kgtw/SGameRealActivity;

    sput-object v0, Lcom/ngame/resources/ResourceDecompressActivity;->UnityPlayerActivityClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/garena/game/kgtw/SGameActivity;->initForResourceDecompress()V

    .line 34
    invoke-super {p0, p1}, Lcom/ngame/resources/ResourceDecompressActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/ngame/utility/SGameUtility;->setSavedIntent(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/garena/game/kgtw/SGameActivity;->startResourceDecompresss()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->onDestroy()V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameActivity"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1}, Lcom/ngame/resources/ResourceDecompressActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 115
    invoke-static {p1}, Lcom/tencent/ngame/utility/SGameUtility;->setSavedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->onPause()V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameActivity"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->onRestart()V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRestart = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameActivity"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->onResume()V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameActivity"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->onStart()V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameActivity"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/ngame/resources/ResourceDecompressActivity;->onStop()V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGameActivity"

    invoke-static {v1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lcom/ngame/resources/ResourceDecompressActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 158
    const-string p1, "SGameActivity"

    const-string v0, "onWindowFocusChanged try hide system ui"

    invoke-static {p1, v0}, Lcom/ngame/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p0}, Lcom/garena/game/kgtw/SGameActivity;->hideSystemUI(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
