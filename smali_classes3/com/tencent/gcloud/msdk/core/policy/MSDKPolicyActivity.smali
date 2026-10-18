.class public Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;
.super Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;
.source "MSDKPolicyActivity.java"


# static fields
.field private static final MSDK_POLICY_ALLOWED_KEY:Ljava/lang/String; = "MSDK_POLICY_ALLOWED"

.field private static final MSDK_POLICY_CONTENT_FILE:Ljava/lang/String; = "msdk_policy_content.html"

.field private static final MSDK_POLICY_VERSION_KEY:Ljava/lang/String; = "MSDK_POLICY_VERSION"


# instance fields
.field permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

.field policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;-><init>()V

    return-void
.end method

.method private compareVersion(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "policyContentVersionInManifest",
            "policyContentVersionInPreference"
        }
    .end annotation

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initPolicyLayout()V
    .locals 2

    .line 92
    const-string v0, "initPolicyLayout"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 93
    const-string v0, "msdk_policy_layout"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    .line 95
    new-instance v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$1;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->setOnClickListener(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout$OnClickListener;)V

    .line 135
    const-string v0, "msdk_policy_content.html"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->readFromHtml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->setPolicyContentWithHtml(Ljava/lang/String;)V

    return-void
.end method

.method private resetAllowedFlagIfVersionUpdate()V
    .locals 10

    .line 169
    const-string v0, "MSDK_POLICY_ALLOWED"

    const-string v1, "MSDK_POLICY_VERSION"

    .line 0
    const-string v2, "isPolicyAllowed: "

    .line 169
    :try_start_0
    const-string v3, "MSDK_POLICY_PREFERENCES"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 170
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 172
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 173
    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 174
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->getMetaDataInActivity(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 176
    invoke-direct {p0, v7, v3}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->compareVersion(II)Z

    move-result v8

    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  versionInManifest: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " versionInPreference: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " needPopupPolicy: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 185
    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 188
    :cond_0
    invoke-interface {v5, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error and skip to continue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private shouldShowPolicyLayout()Z
    .locals 8

    .line 48
    const-string v0, "shouldShowPolicyLayout"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MSDK_POLICY_PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    const-string v2, "MSDK_POLICY_ALLOWED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 52
    invoke-static {v4}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->enableDeviceInfo(Z)V

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->getMetaDataInActivity(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "MSDK_RESULT_FILE_NAME"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MSDK_RESULT_FILE_NAME : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 58
    invoke-static {p0, v5}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyHelper;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 60
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "policy allowed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", file exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 63
    const-string v0, "MSDK_PERMISSION_CONFIRMED"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    return v4

    .line 67
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->isPermissionContentEmpty:Z

    if-eqz v1, :cond_4

    .line 68
    const-string v0, "permission content is empty, navigate to target activity"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->navigateTargetActivity()V

    return v3

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->requiredPermissions:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->requiredPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->checkPermissionAllGranted([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 83
    :cond_5
    const-string v0, "shouldShowPolicyLayout - not all permission granted, go to permission layout"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->initPermissionLayout()V

    goto :goto_3

    .line 75
    :cond_6
    :goto_2
    const-string v1, "shouldShowPolicyLayout - all permission already granted"

    invoke-static {v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->navigateTargetActivity()V

    return v3

    .line 80
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->initPermissionLayout()V

    :goto_3
    return v3
.end method


# virtual methods
.method protected dismissPermissionContent()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected initPermissionLayout()V
    .locals 2

    .line 140
    const-string v0, "initPermissionLayout"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->i(Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 142
    const-string v0, "msdk_perimission_layout"

    invoke-static {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    new-instance v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;

    invoke-direct {v1, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity$2;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->setOnClickListener(Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout$OnClickListener;)V

    .line 160
    const-string v0, "msdk_permission_content.html"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->readFromHtml(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    invoke-virtual {v1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->setPermissionContentWithHtml(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->resetAllowedFlagIfVersionUpdate()V

    .line 30
    const-string p1, "activity_msdk_policy"

    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->initPolicyLayout()V

    .line 34
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->shouldShowPolicyLayout()Z

    move-result p1

    if-nez p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 36
    invoke-virtual {p1, v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->onDestroy()V

    .line 203
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;->onDestroy()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->policyLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLayout;

    .line 210
    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyActivity;->permissionLayout:Lcom/tencent/gcloud/msdk/core/policy/MSDKPermissionLayout;

    return-void
.end method
