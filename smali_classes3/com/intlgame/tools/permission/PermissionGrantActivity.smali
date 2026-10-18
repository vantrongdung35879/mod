.class public Lcom/intlgame/tools/permission/PermissionGrantActivity;
.super Landroid/app/Activity;
.source "PermissionGrantActivity.java"


# static fields
.field private static final DEFAULT_UNITY_CLASSNAME:Ljava/lang/String; = "com.unity3d.player.UnityPlayerActivity"

.field private static final DEF_TYPE_ARRAY:Ljava/lang/String; = "array"

.field private static final DEF_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final DEF_TYPE_STYLE:Ljava/lang/String; = "style"

.field private static final INTLSDK_DENY_SETTINGS_TYPE:Ljava/lang/String; = "INTLSDK_DENY_SETTINGS_TYPE"

.field private static final INTLSDK_EXIT_BUTTON_ENABLE:Ljava/lang/String; = "INTLSDK_EXIT_BUTTON_ENABLE"

.field private static final INTLSDK_GRANT_SETTINGS_TYPE:Ljava/lang/String; = "INTLSDK_GRANT_SETTINGS_TYPE"

.field private static final META_GAME_ACTIVITY:Ljava/lang/String; = "INTLSDK_GAME_ACTIVITY_CLASSNAME"

.field private static final META_SHOW_WARNING_AGAIN:Ljava/lang/String; = "INTLSDK_SHOW_PERMISSION_WARNING_AGAIN"

.field private static final PERMISSIONS_NEED_GRANTED_LABEL:Ljava/lang/String; = "intl_permission_granted_list"

.field private static final PERMISSION_ALWAYS_DENIED_LABEL:Ljava/lang/String; = "intl_always_denied_warning"

.field private static final PERMISSION_CANCEL_BUTTON_LABEL:Ljava/lang/String; = "intl_permission_cancel"

.field private static final PERMISSION_CONFIRM_BUTTON_LABEL:Ljava/lang/String; = "intl_permission_confirm"

.field private static final PERMISSION_CONFIRM_TITLE_LABEL:Ljava/lang/String; = "intl_permission_title"

.field private static final PERMISSION_DIALOG_STYLE_LABEL:Ljava/lang/String; = "INTLPermissionTheme"

.field private static final PERMISSION_GRANT_LABEL:Ljava/lang/String; = "intl_permission_grant_warning"

.field private static final PERMISSION_SETTINGS_BUTTON_LABEL:Ljava/lang/String; = "intl_permission_settings"

.field private static final mPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPermsStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPreferencesUtil:Lcom/intlgame/tools/PreferencesUtils;


# instance fields
.field private isPermissionProcessDone:Z

.field private isWindowHasFocus:Z

.field private mCtx:Landroid/content/Context;

.field private mListener:Lcom/intlgame/api/INTLResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intlgame/api/INTLResultCallback<",
            "Lcom/intlgame/api/INTLResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPermsFromManifest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private mShowedDialogs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/intlgame/tools/PreferencesUtils;

    invoke-direct {v0}, Lcom/intlgame/tools/PreferencesUtils;-><init>()V

    sput-object v0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPreferencesUtil:Lcom/intlgame/tools/PreferencesUtils;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermsStateMap:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermissions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isPermissionProcessDone:Z

    .line 104
    iput-boolean v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isWindowHasFocus:Z

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermsFromManifest:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/intlgame/tools/permission/PermissionGrantActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isPermissionProcessDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->jumpToMainActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->autoRetryRequestPerm([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/intlgame/tools/permission/PermissionGrantActivity;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->showOneDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getDeniedPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/intlgame/tools/permission/PermissionGrantActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/intlgame/tools/permission/PermissionGrantActivity;)Landroid/content/res/Resources;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$800(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->showGoToGrantedDialog(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->dismissPreShownDialogs()V

    return-void
.end method

.method private autoRetryRequestPerm([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/intlgame/api/INTLResultCallback<",
            "Lcom/intlgame/api/INTLResult;",
            ">;",
            "Landroid/app/AlertDialog$Builder;",
            ")V"
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity$3;-><init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;Landroid/app/AlertDialog$Builder;[Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;)V

    invoke-virtual {p0, v0, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->requestPerms(Lcom/intlgame/api/INTLResultCallback;[Ljava/lang/String;)V

    return-void
.end method

.method private createCustomDialog(Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 7

    .line 383
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v1, "style"

    iget-object v2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    const-string v3, "INTLPermissionTheme"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    const-string v3, "intl_permission_title"

    const-string/jumbo v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 385
    iget-object v2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    const-string v3, "intl_permission_cancel"

    iget-object v5, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 386
    iget-object v3, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    const-string v5, "intl_permission_settings"

    iget-object v6, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 393
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 401
    :cond_1
    const-string v1, ""

    invoke-static {p0, p1, v1}, Lcom/intlgame/tools/MetaDataUtils;->readFromActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-static {p1}, Lcom/intlgame/tools/permission/StringUtils;->checkIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 403
    new-instance v1, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity$4;-><init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    :cond_2
    const-string p1, "INTLSDK_EXIT_BUTTON_ENABLE"

    const-string/jumbo v1, "true"

    invoke-static {p0, p1, v1}, Lcom/intlgame/tools/MetaDataUtils;->readFromApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 421
    new-instance p1, Lcom/intlgame/tools/permission/PermissionGrantActivity$5;

    invoke-direct {p1, p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity$5;-><init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    const/4 p1, 0x0

    .line 431
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private dismissPreShownDialogs()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mShowedDialogs:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    :goto_0
    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :catch_0
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mShowedDialogs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private varargs getDeniedPermissions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 547
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermissions:Ljava/util/Set;

    .line 548
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "permission not granted : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 553
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getManifestPermissions()[Ljava/lang/String;
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermsFromManifest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A problem occurred when retrieving permissions"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 525
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 527
    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermsFromManifest:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manifest contained permission: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermsFromManifest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermsFromManifest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private initializePermissionsMap()V
    .locals 6

    .line 331
    const-class v0, Landroid/Manifest$permission;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 332
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 335
    :try_start_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "could not access field "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 339
    :goto_1
    sget-object v4, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermissions:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jumpToMainActivity()V
    .locals 3

    .line 607
    iget-boolean v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isWindowHasFocus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isPermissionProcessDone:Z

    if-eqz v0, :cond_1

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/high16 v1, 0x20000000

    .line 611
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 613
    const-string v1, "INTLSDK_GAME_ACTIVITY_CLASSNAME"

    const-string v2, "com.unity3d.player.UnityPlayerActivity"

    invoke-static {p0, v1, v2}, Lcom/intlgame/tools/MetaDataUtils;->readFromActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0, v0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->startActivity(Landroid/content/Intent;)V

    .line 616
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 618
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private processPermission()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    const-string v1, "array"

    iget-object v2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    const-string v3, "intl_permission_granted_list"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    new-instance v1, Lcom/intlgame/tools/permission/PermissionGrantActivity$1;

    invoke-direct {v1, p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity$1;-><init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;)V

    invoke-virtual {p0, v1, v0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->requestPermsWithDialog(Lcom/intlgame/api/INTLResultCallback;[Ljava/lang/String;)V

    return-void
.end method

.method private recordShownDialog(Landroid/app/AlertDialog;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mShowedDialogs:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mShowedDialogs:Ljava/util/Queue;

    :cond_0
    if-eqz p1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mShowedDialogs:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private shouldShowRationale([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/intlgame/api/INTLResultCallback<",
            "Lcom/intlgame/api/INTLResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 470
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v7, p1, v3

    .line 471
    sget-object v8, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermsStateMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_2

    .line 475
    iget-object v9, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/intlgame/tools/PreferencesUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v9

    .line 476
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_2
    invoke-static {p0, v7}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 481
    iget-object v6, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/intlgame/tools/PreferencesUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v6, 0x1

    :cond_3
    if-eqz v9, :cond_4

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-ne v9, v6, :cond_5

    const/4 v5, 0x1

    .line 495
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, " isPreRationaleState "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isCurRationaleState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    if-nez v5, :cond_7

    if-eqz p2, :cond_7

    .line 499
    new-instance p1, Lcom/intlgame/api/INTLResult;

    const-string v0, "check permissions by opening Settings"

    const/16 v1, 0xd

    invoke-direct {p1, v1, v1, v0}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    return v2

    :cond_7
    return v0
.end method

.method private showGoToGrantedDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .line 440
    iget-object v0, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    const-string v2, "intl_always_denied_warning"

    const-string/jumbo v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    const-string v2, "intl_permission_confirm"

    iget-object v4, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alwaysDeniedId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", confirmBtnId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V

    .line 445
    const-string v2, "INTLSDK_DENY_SETTINGS_TYPE"

    invoke-direct {p0, v2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->createCustomDialog(Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 447
    invoke-virtual {v2, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 448
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 450
    invoke-direct {p0, v2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->showOneDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method private showOneDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 148
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->dismissPreShownDialogs()V

    .line 149
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getWindowManager()Landroid/view/WindowManager;

    .line 154
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 155
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->recordShownDialog(Landroid/app/AlertDialog;)V

    return-void
.end method


# virtual methods
.method public varargs hasPermission([Ljava/lang/String;)Z
    .locals 5

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 559
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 560
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    return v4

    .line 565
    :cond_2
    invoke-static {v0}, Landroidx/core/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Lcom/intlgame/tools/permission/StringUtils;->checkIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 567
    :cond_3
    iget-object v1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroidx/core/app/AppOpsManagerCompat;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_4
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {p0}, Lcom/intlgame/api/INTLSDK;->initialize(Landroid/app/Activity;)Z

    .line 111
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mCtx:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    .line 113
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    .line 114
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mShowedDialogs:Ljava/util/Queue;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 577
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 579
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-ge p1, p3, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mListener:Lcom/intlgame/api/INTLResultCallback;

    if-eqz p1, :cond_3

    .line 584
    invoke-virtual {p0, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->hasPermission([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 585
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mListener:Lcom/intlgame/api/INTLResultCallback;

    new-instance p3, Lcom/intlgame/api/INTLResult;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, v0}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, p3}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto :goto_0

    .line 586
    :cond_1
    iget-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mListener:Lcom/intlgame/api/INTLResultCallback;

    invoke-direct {p0, p2, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->shouldShowRationale([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 587
    invoke-direct {p0, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getDeniedPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 588
    iget-object p3, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mListener:Lcom/intlgame/api/INTLResultCallback;

    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc

    invoke-direct {v0, v1, v1, p1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    .line 590
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "\uff0c"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->hasPermission([Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mListener:Lcom/intlgame/api/INTLResultCallback;

    invoke-direct {p0, p2, p3}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->shouldShowRationale([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->processPermission()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 596
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 598
    iput-boolean p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isWindowHasFocus:Z

    .line 600
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->jumpToMainActivity()V

    return-void
.end method

.method public requestPerms(Lcom/intlgame/api/INTLResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intlgame/api/INTLResultCallback<",
            "Lcom/intlgame/api/INTLResult;",
            ">;)V"
        }
    .end annotation

    .line 375
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getManifestPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->requestPerms(Lcom/intlgame/api/INTLResultCallback;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs requestPerms(Lcom/intlgame/api/INTLResultCallback;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intlgame/api/INTLResultCallback<",
            "Lcom/intlgame/api/INTLResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->initializePermissionsMap()V

    .line 348
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "current sdk version is "

    const/4 v3, 0x0

    if-ge v0, v1, :cond_2

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", no need to grant permission"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    .line 351
    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, v3, v3, p2}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct {p0, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getDeniedPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 357
    array-length v1, v0

    if-lez v1, :cond_3

    .line 358
    invoke-direct {p0, v0, p1}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->shouldShowRationale([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    iput-object p1, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mListener:Lcom/intlgame/api/INTLResultCallback;

    const p1, 0x186a1

    .line 361
    invoke-static {p0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 364
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", all permissions granted"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_4

    .line 366
    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_4
    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, v3, v3, p2}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public varargs requestPermsWithDialog(Lcom/intlgame/api/INTLResultCallback;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intlgame/api/INTLResultCallback<",
            "Lcom/intlgame/api/INTLResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    const-string/jumbo v0, "string"

    const-string v1, ""

    .line 0
    const-string v2, "current sdk version is "

    const-string v3, "Unknown error "

    const/4 v4, 0x0

    .line 194
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_0

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", no need to grant permission"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 197
    :try_start_1
    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    new-instance p2, Lcom/intlgame/api/INTLResult;

    invoke-direct {p2, v4, v4, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception p2

    goto/16 :goto_1

    .line 199
    :cond_0
    :try_start_2
    sget-object v2, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPermissions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->initializePermissionsMap()V

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getManifestPermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getDeniedPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 205
    array-length v5, v2

    if-nez v5, :cond_2

    .line 206
    const-string p2, "all permissions have granted"

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    new-instance p2, Lcom/intlgame/api/INTLResult;

    invoke-direct {p2, v4, v4, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 212
    :try_start_3
    array-length v5, p2

    if-nez v5, :cond_3

    goto :goto_0

    .line 215
    :cond_3
    invoke-direct {p0, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->getDeniedPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 216
    array-length p2, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gtz p2, :cond_4

    .line 255
    new-instance p2, Lcom/intlgame/api/INTLResult;

    invoke-direct {p2, v4, v4, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    return-void

    .line 225
    :cond_4
    :goto_0
    :try_start_4
    iget-object p2, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    const-string v5, "intl_permission_grant_warning"

    iget-object v6, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v5, v0, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 226
    iget-object v5, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mRes:Landroid/content/res/Resources;

    const-string v6, "intl_permission_confirm"

    iget-object v7, p0, Lcom/intlgame/tools/permission/PermissionGrantActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez p2, :cond_5

    .line 230
    const-string p2, "set \'permission_grant_warning\' in res/string.xml will popup a warning dialog"

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->i(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 231
    invoke-direct {p0, v2, p1, p2}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->autoRetryRequestPerm([Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V

    goto :goto_3

    .line 233
    :cond_5
    const-string v5, "INTLSDK_GRANT_SETTINGS_TYPE"

    invoke-direct {p0, v5}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->createCustomDialog(Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 235
    new-instance v6, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;

    invoke-direct {v6, p0, v2, p1, v5}, Lcom/intlgame/tools/permission/PermissionGrantActivity$2;-><init>(Lcom/intlgame/tools/permission/PermissionGrantActivity;[Ljava/lang/String;Lcom/intlgame/api/INTLResultCallback;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_6

    .line 245
    invoke-direct {p0, v5}, Lcom/intlgame/tools/permission/PermissionGrantActivity;->showOneDialog(Landroid/app/AlertDialog$Builder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception p2

    const/4 v0, 0x0

    .line 251
    :goto_1
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/intlgame/foundation/INTLLog;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 255
    new-instance p2, Lcom/intlgame/api/INTLResult;

    invoke-direct {p2, v4, v4, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    :goto_2
    invoke-interface {p1, p2}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    :cond_6
    :goto_3
    return-void

    :catchall_1
    move-exception p2

    :goto_4
    if-eqz v0, :cond_7

    new-instance v0, Lcom/intlgame/api/INTLResult;

    invoke-direct {v0, v4, v4, v1}, Lcom/intlgame/api/INTLResult;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/intlgame/api/INTLResultCallback;->onResult(Lcom/intlgame/api/INTLResult;)V

    .line 257
    :cond_7
    throw p2
.end method
