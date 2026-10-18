.class public abstract Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;
.super Landroid/app/Activity;
.source "MSDKPolicyBaseActivity.java"


# static fields
.field static final MSDK_PERMISSION_CONFIRMED:Ljava/lang/String; = "MSDK_PERMISSION_CONFIRMED"

.field static final MSDK_PERMISSION_CONTENT_FILE:Ljava/lang/String; = "msdk_permission_content.html"

.field private static final MSDK_PERMISSION_REQUEST_CODE:I = 0x2710

.field protected static final MSDK_POLICY_PREFERENCES:Ljava/lang/String; = "MSDK_POLICY_PREFERENCES"

.field private static final MSDK_POLICY_TARGET_ACTIVITY_KEY:Ljava/lang/String; = "MSDK_POLICY_TARGET_ACTIVITY"

.field protected static final MSDK_RESULT_FILE_NAME_KEY:Ljava/lang/String; = "MSDK_RESULT_FILE_NAME"


# instance fields
.field protected isAllGranted:Z

.field protected isPermissionContentEmpty:Z

.field protected permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

.field protected requiredPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetActivityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->isAllGranted:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    return-void
.end method

.method private checkPermissionContent()V
    .locals 2

    .line 158
    :try_start_0
    invoke-direct {p0, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->isPermissionContentEmpty(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->isPermissionContentEmpty:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    const-string v0, "permission content is empty"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 162
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPermissionContentEmpty: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->isPermissionContentEmpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private initPermissionSecondLayout()V
    .locals 2

    .line 80
    const-string v0, "initPermissionSecondLayout"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 81
    const-string v0, "msdk_perimission_layout_second"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    new-instance v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity$1;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->setOnClickListener(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond$OnClickListener;)V

    .line 121
    const-string v0, "msdk_permission_content.html"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->readFromHtml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->setPermissionContentWithHtml(Ljava/lang/String;)V

    return-void
.end method

.method private initPermissionsList()V
    .locals 5

    .line 136
    const-string v0, "initPermissionsList"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 138
    const-string v0, "msdk_permission_list"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getArrayId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initPermissionsList with configured permission: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 144
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 145
    invoke-static {p0, v3}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initPermissionList permissions after filter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private isPermissionContentEmpty(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 166
    const-string v0, "check if permission content valid"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "msdk_permission_content.html"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception when check msdk_permission_content.html"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 178
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close input stream failed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method protected checkPermissionAllGranted([Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkPermissionAllGranted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 217
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 218
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 222
    :cond_0
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const-string p1, "checkPermissionAllGranted"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "permissionsPending"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    return v1
.end method

.method protected dismissPermissionContent()V
    .locals 0

    return-void
.end method

.method protected navigateTargetActivity()V
    .locals 2

    .line 190
    const-string v0, "navigateTargetActivity"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->targetActivityName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->gotoActivityByName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->isDebug(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->init(Z)V

    .line 47
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->getMetaDataInActivity(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    const-string v1, "MSDK_POLICY_TARGET_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->targetActivityName:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSDK_POLICY_TARGET_ACTIVITY : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->targetActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-static {p1, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 56
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->init(Landroid/content/Context;)V

    .line 69
    const-string p1, "onCreate"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 71
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->initPermissionsList()V

    .line 72
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->checkPermissionContent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 281
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 282
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestPermissionsResult requestCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestPermissionsResult permissions : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_5

    .line 242
    array-length p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 244
    array-length p1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget v5, p3, v2

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 248
    :cond_0
    iget-object v5, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 256
    :cond_2
    const-string p1, "onRequestPermissionsResult"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 257
    iget-object p2, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "permissionsPending"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    if-eqz v3, :cond_3

    .line 260
    const-string p1, "onRequestPermissionsResult - all permission granted"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->navigateTargetActivity()V

    return-void

    .line 265
    :cond_3
    const-string p1, "onRequestPermissionsResult - not all granted, go to PermissionLayoutSecond"

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    if-eqz p1, :cond_4

    .line 268
    invoke-virtual {p1, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->setLayoutVisibility(I)V

    goto :goto_2

    .line 270
    :cond_4
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->initPermissionSecondLayout()V

    .line 271
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    invoke-virtual {p1, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->setLayoutVisibility(I)V

    .line 273
    :goto_2
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->permissionLayoutSecond:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;

    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayoutSecond;->enableConfirmButton(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->dismissPermissionContent()V

    :cond_5
    return-void
.end method

.method protected readFromHtml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "fileName"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readFromHtml with filename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 127
    invoke-static {p1, p2}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->readFileFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 129
    const-string p1, ""

    return-object p1

    .line 131
    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method protected requestPermissions([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestPermissions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 199
    array-length v0, p1

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->navigateTargetActivity()V

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->checkPermissionAllGranted([Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->isAllGranted:Z

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->navigateTargetActivity()V

    return-void

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0x2710

    .line 209
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
