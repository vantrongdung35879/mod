.class public Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;
.super Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;
.source "MSDKPolicyV2Activity.java"


# static fields
.field private static final CONFIG_INI:Ljava/lang/String; = "MSDKConfig.ini"


# instance fields
.field private havePopupMethod:Ljava/lang/reflect/Method;

.field private policyPopupCallback:Ljava/lang/Object;

.field private popupCallbackClazz:Ljava/lang/Class;

.field private popupSetDebugEnableMethod:Ljava/lang/reflect/Method;

.field private requestRemoteConfigMethod:Ljava/lang/reflect/Method;

.field private showDialogMethodBySceneType:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->requestPopupRemoteConfig()V

    return-void
.end method

.method private haveDialog(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneType"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->havePopupMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private initMSDKPopup(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    :try_start_0
    const-string v2, "com.itop.gcloud.msdk.popup.MSDKPopup"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    const-string v3, "init"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const/4 p1, 0x0

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    const-string p1, "havePopupWindow"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->havePopupMethod:Ljava/lang/reflect/Method;

    .line 62
    const-string p1, "com.itop.gcloud.msdk.popup.IMSDKPopupWindowCallback"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->popupCallbackClazz:Ljava/lang/Class;

    const/4 v4, 0x3

    if-eqz p1, :cond_1

    .line 64
    const-string p1, "showDialogs"

    iget-object v5, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->popupCallbackClazz:Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/app/Activity;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    aput-object v5, v6, v3

    invoke-virtual {v2, p1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->showDialogMethodBySceneType:Ljava/lang/reflect/Method;

    .line 66
    :cond_1
    const-string p1, "requestRemoteConfig"

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    aput-object v5, v4, v1

    aput-object v5, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->requestRemoteConfigMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    .line 79
    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "com.itop.gcloud.msdk.popup.utils.MSDKPopupLog"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 81
    const-string v2, "setDebugEnable"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->popupSetDebugEnableMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private initPopupCallback()V
    .locals 5

    .line 91
    new-instance v0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;

    invoke-direct {v0, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity$1;-><init>(Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;)V

    .line 116
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->popupCallbackClazz:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->policyPopupCallback:Ljava/lang/Object;

    return-void
.end method

.method private requestPopupRemoteConfig()V
    .locals 17

    move-object/from16 v1, p0

    .line 152
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "MSDKConfig.ini"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 153
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 154
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    const-string v0, "^MSDK_POP_URL\\s*=\\s*(\\S+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 156
    const-string v6, "^MSDK_GAME_ID\\s*=\\s*(\\d+)$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 157
    const-string v7, "^MSDK_SDK_KEY\\s*=\\s*(\\w+)$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 158
    const-string v8, "^MSDK_DEBUG\\s*=\\s*(\\w+)$"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    const-string v9, ""

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    .line 164
    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 165
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 166
    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 167
    invoke-virtual {v6, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 168
    invoke-virtual {v7, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 169
    invoke-virtual {v8, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 170
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v16, v6

    const/4 v6, 0x1

    .line 171
    invoke-virtual {v15, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_0
    move-object/from16 v16, v6

    .line 172
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    .line 173
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 177
    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    :cond_3
    :goto_1
    move-object/from16 v6, v16

    goto :goto_0

    .line 180
    :cond_4
    iget-object v0, v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->requestRemoteConfigMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v6, 0x3

    .line 182
    :try_start_5
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v2

    const/4 v7, 0x1

    aput-object v10, v6, v7

    const/4 v7, 0x2

    aput-object v11, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    .line 186
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 184
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    .line 189
    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->popupSetDebugEnableMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7

    .line 190
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v6, "1"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "true"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    :cond_6
    iget-object v0, v1, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->popupSetDebugEnableMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 204
    :cond_7
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 206
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    .line 211
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :goto_6
    if-eqz v3, :cond_e

    .line 218
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v2, v5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v2, v5

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object v2, v5

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_13

    :catch_7
    move-exception v0

    const/4 v2, 0x0

    goto :goto_9

    :catch_8
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_c

    :catch_9
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_7

    :catch_a
    move-exception v0

    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_9

    :catch_b
    move-exception v0

    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_c

    :catch_c
    move-exception v0

    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_f

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_7
    move-object v5, v4

    :goto_8
    move-object v2, v0

    goto/16 :goto_14

    :catch_d
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 200
    :goto_9
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v2, :cond_8

    .line 204
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_a

    :catch_e
    move-exception v0

    move-object v2, v0

    .line 206
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_8
    :goto_a
    if-eqz v4, :cond_9

    .line 211
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_b

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_9
    :goto_b
    if-eqz v3, :cond_e

    .line 218
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16

    goto/16 :goto_12

    :catch_10
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 198
    :goto_c
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v2, :cond_a

    .line 204
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    goto :goto_d

    :catch_11
    move-exception v0

    move-object v2, v0

    .line 206
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_a
    :goto_d
    if-eqz v4, :cond_b

    .line 211
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    goto :goto_e

    :catch_12
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_b
    :goto_e
    if-eqz v3, :cond_e

    .line 218
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16

    goto :goto_12

    :catch_13
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 196
    :goto_f
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v2, :cond_c

    .line 204
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_14

    goto :goto_10

    :catch_14
    move-exception v0

    move-object v2, v0

    .line 206
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_c
    :goto_10
    if-eqz v4, :cond_d

    .line 211
    :try_start_14
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15

    goto :goto_11

    :catch_15
    move-exception v0

    move-object v2, v0

    .line 213
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_d
    :goto_11
    if-eqz v3, :cond_e

    .line 218
    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_16

    goto :goto_12

    :catch_16
    move-exception v0

    move-object v2, v0

    .line 220
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_e
    :goto_12
    return-void

    :catchall_4
    move-exception v0

    :goto_13
    move-object v5, v2

    goto/16 :goto_8

    :goto_14
    if-eqz v5, :cond_f

    .line 204
    :try_start_16
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_17

    goto :goto_15

    :catch_17
    move-exception v0

    move-object v5, v0

    .line 206
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_f
    :goto_15
    if-eqz v4, :cond_10

    .line 211
    :try_start_17
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_18

    goto :goto_16

    :catch_18
    move-exception v0

    move-object v4, v0

    .line 213
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :cond_10
    :goto_16
    if-eqz v3, :cond_11

    .line 218
    :try_start_18
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_19

    goto :goto_17

    :catch_19
    move-exception v0

    move-object v3, v0

    .line 220
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    .line 223
    :cond_11
    :goto_17
    throw v2
.end method

.method private showPolicyDialog()V
    .locals 5

    .line 135
    const-string v0, "showPolicyDialog"

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->getEventMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->reportEvent(Ljava/util/Map;)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->showDialogMethodBySceneType:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->policyPopupCallback:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyLog;->e(Ljava/lang/String;)V

    :goto_0
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

    .line 35
    invoke-super {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string p1, "activity_msdk_policy_v2"

    invoke-static {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->setContentView(I)V

    .line 40
    invoke-direct {p0, p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->initMSDKPopup(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->initPopupCallback()V

    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->haveDialog(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->showPolicyDialog()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 46
    invoke-static {p1}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyTDMHelper;->enableDeviceInfo(Z)V

    .line 48
    invoke-direct {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->requestPopupRemoteConfig()V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/gcloud/msdk/core/policy/MSDKPolicyV2Activity;->navigateTargetActivity()V

    :goto_0
    return-void
.end method
