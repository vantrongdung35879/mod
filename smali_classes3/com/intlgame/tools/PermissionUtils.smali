.class public Lcom/intlgame/tools/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intlgame/tools/PermissionUtils$PermissionCallBackInterface;
    }
.end annotation


# static fields
.field private static final PERMISSIONS_STORAGE:[Ljava/lang/String;

.field private static final PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field private static _instance:Lcom/intlgame/tools/PermissionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    .line 17
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/intlgame/tools/PermissionUtils;
    .locals 1

    .line 22
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->_instance:Lcom/intlgame/tools/PermissionUtils;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/intlgame/tools/PermissionUtils;

    invoke-direct {v0}, Lcom/intlgame/tools/PermissionUtils;-><init>()V

    sput-object v0, Lcom/intlgame/tools/PermissionUtils;->_instance:Lcom/intlgame/tools/PermissionUtils;

    .line 25
    :cond_0
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->_instance:Lcom/intlgame/tools/PermissionUtils;

    return-object v0
.end method

.method private getPermissionResult(Landroid/app/Activity;)I
    .locals 3

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 62
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    aget-object v1, v0, v2

    invoke-static {p1, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 65
    aget-object v0, v0, v2

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    or-int/2addr p1, v1

    :goto_0
    return p1
.end method

.method private isWRPermissionGranted(Landroid/app/Activity;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/intlgame/tools/PermissionUtils;->getPermissionResult(Landroid/app/Activity;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldShowWRPermissionRequestPopup(Landroid/app/Activity;)Z
    .locals 4

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 72
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 74
    :cond_0
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    aget-object v1, v0, v2

    invoke-static {p1, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    aget-object v0, v0, v3

    .line 75
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 7

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 33
    :try_start_0
    invoke-direct {p0, p1}, Lcom/intlgame/tools/PermissionUtils;->getPermissionResult(Landroid/app/Activity;)I

    move-result v0

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "] is got : "

    const/4 v3, 0x0

    const/16 v4, 0x21

    const/4 v5, 0x1

    const-string v6, "User permission ["

    if-lt v1, v4, :cond_0

    .line 35
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    aget-object v3, v6, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    aget-object v3, v6, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] and ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v6, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 43
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE_ANDROID_TIRAMISU:[Ljava/lang/String;

    invoke-static {p1, v0, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 45
    :cond_1
    sget-object v0, Lcom/intlgame/tools/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p1, v0, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public checkWRPermissionGranted(Landroid/app/Activity;Lcom/intlgame/tools/PermissionUtils$PermissionCallBackInterface;)Z
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Lcom/intlgame/tools/PermissionUtils;->isWRPermissionGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-direct {p0, p1}, Lcom/intlgame/tools/PermissionUtils;->shouldShowWRPermissionRequestPopup(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/intlgame/tools/PermissionUtils;->verifyStoragePermissions(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 83
    invoke-interface {p2}, Lcom/intlgame/tools/PermissionUtils$PermissionCallBackInterface;->onPopupPermissionDialog()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
