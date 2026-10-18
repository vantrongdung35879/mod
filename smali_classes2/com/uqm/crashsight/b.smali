.class public final Lcom/uqm/crashsight/b;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field public static a:Z = true

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field private static d:Lcom/uqm/crashsight/proguard/d;

.field private static e:Z

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/uqm/crashsight/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/uqm/crashsight/CrashSightStrategy;)V
    .locals 20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-class v4, Lcom/uqm/crashsight/b;

    monitor-enter v4

    .line 93
    :try_start_0
    const-string v0, "appContext: %s, appId: %s, isDebug: %b, crashSightStrategy: %s"

    if-nez p0, :cond_0

    const-string v5, "is null"

    goto :goto_0

    :cond_0
    const-string v5, "not null"

    .line 94
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v3, :cond_1

    const-string v7, "is null"

    goto :goto_1

    :cond_1
    const-string v7, "not null"

    :goto_1
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v1, v8, v5

    const/4 v10, 0x2

    aput-object v6, v8, v10

    const/4 v6, 0x3

    aput-object v7, v8, v6

    .line 93
    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 96
    sget-boolean v0, Lcom/uqm/crashsight/b;->e:Z

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "[init] initial Multi-times, ignore this."

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 98
    monitor-exit v4

    return-void

    :cond_2
    if-nez p0, :cond_3

    .line 101
    :try_start_1
    sget-object v0, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    const-string v1, "[init] context is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 102
    monitor-exit v4

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 106
    :try_start_2
    sget-object v0, Lcom/uqm/crashsight/proguard/q;->a:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 107
    monitor-exit v4

    return-void

    .line 109
    :cond_4
    :try_start_3
    sput-boolean v5, Lcom/uqm/crashsight/b;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1304
    :try_start_4
    const-string v8, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1307
    :try_start_5
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/proc/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/cmdline"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1308
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1309
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1314
    :goto_2
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    const/4 v11, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    .line 1311
    :goto_3
    :try_start_8
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_5

    goto :goto_2

    .line 1317
    :cond_5
    :goto_4
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1318
    const-string v0, "Cannot get process name!"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/p;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1319
    const-string v0, ""

    sput-object v0, Lcom/uqm/crashsight/b;->f:Ljava/lang/String;

    goto :goto_6

    .line 1322
    :cond_6
    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_7

    .line 1324
    const-string v0, ""

    sput-object v0, Lcom/uqm/crashsight/b;->f:Ljava/lang/String;

    goto :goto_6

    .line 1326
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v0, v5

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/b;->f:Ljava/lang/String;

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v11, :cond_8

    .line 1314
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 1316
    :cond_8
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    .line 1329
    :try_start_a
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 1330
    const-string v0, ""

    sput-object v0, Lcom/uqm/crashsight/b;->f:Ljava/lang/String;

    :goto_6
    if-eqz v2, :cond_9

    .line 113
    sput-boolean v5, Lcom/uqm/crashsight/b;->c:Z

    .line 114
    sput-boolean v5, Lcom/uqm/crashsight/proguard/q;->b:Z

    .line 115
    const-string v0, "CrashSight debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 117
    const-string v0, "--------------------------------------------------------------------------------------------"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 119
    const-string v0, "CrashSight debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 121
    const-string v0, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684CrashSight SDK\u7684Log -- More detailed log of CrashSight SDK will be output to logcat;"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 123
    const-string v0, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by CrashSight will be uploaded immediately."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 125
    const-string v0, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 126
    const-string v0, "--------------------------------------------------------------------------------------------"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    const-string v0, "[init] Open debug mode of CrashSight."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    :cond_9
    const-string v0, " crash report start initializing..."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 132
    const-string v0, "[init] CrashSight start initializing..."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 133
    const-string v0, "[init] CrashSight complete version: v%s"

    new-array v8, v5, [Ljava/lang/Object;

    const-string v11, "4.3.8.262"

    aput-object v11, v8, v9

    invoke-static {v0, v8}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 135
    invoke-static/range {p0 .. p0}, Lcom/uqm/crashsight/proguard/v;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    if-eqz v3, :cond_a

    .line 139
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getUploadThreadNum()I

    move-result v0

    if-lez v0, :cond_a

    .line 141
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getUploadThreadNum()I

    move-result v0

    sput v0, Lcom/uqm/crashsight/proguard/n;->a:I

    .line 142
    const-string v0, "[init] set uploadThreadNum to %d"

    sget v11, Lcom/uqm/crashsight/proguard/n;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v9

    invoke-static {v0, v12}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    :cond_a
    invoke-static {v8}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/uqm/crashsight/crashreport/common/info/a;

    move-result-object v11

    .line 150
    invoke-static {v11}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Lcom/uqm/crashsight/crashreport/common/info/a;)V

    if-eqz v3, :cond_b

    .line 151
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getLogPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 152
    invoke-static {}, Lcom/uqm/crashsight/crashreport/common/info/c;->a()Lcom/uqm/crashsight/crashreport/common/info/c;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getLogPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/uqm/crashsight/crashreport/common/info/c;->a(Ljava/lang/String;)V

    .line 156
    :cond_b
    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->v()V

    .line 157
    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-static {v8, v0}, Lcom/uqm/crashsight/proguard/d;->a(Landroid/content/Context;Ljava/util/List;)Lcom/uqm/crashsight/proguard/d;

    move-result-object v0

    sput-object v0, Lcom/uqm/crashsight/b;->d:Lcom/uqm/crashsight/proguard/d;

    .line 158
    invoke-static {v8}, Lcom/uqm/crashsight/proguard/l;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/l;

    .line 159
    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-static {v8, v0}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/uqm/crashsight/crashreport/common/strategy/a;

    move-result-object v12

    .line 160
    invoke-static {v8}, Lcom/uqm/crashsight/proguard/b;->a(Landroid/content/Context;)Lcom/uqm/crashsight/proguard/b;

    move-result-object v13

    .line 162
    invoke-virtual {v11, v1}, Lcom/uqm/crashsight/crashreport/common/info/a;->a(Ljava/lang/String;)V

    .line 163
    const-string v0, "[param] Set APP ID:%s"

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v1, v14, v9

    invoke-static {v0, v14}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v11}, Lcom/uqm/crashsight/crashreport/common/info/a;->Q()V

    if-eqz v3, :cond_17

    .line 2190
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 2191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v14, 0x64

    if-nez v1, :cond_d

    .line 2192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v14, :cond_c

    .line 2193
    invoke-virtual {v0, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2194
    const-string v15, "appVersion %s length is over limit %d substring to %s"

    .line 2195
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v16, v7, v5

    aput-object v1, v7, v10

    .line 2194
    invoke-static {v15, v7}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 2199
    :cond_c
    iput-object v0, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->n:Ljava/lang/String;

    .line 2200
    const-string v0, "[param] Set App version: %s"

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v0, v7}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2205
    :cond_d
    :try_start_b
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->isReplaceOldChannel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2207
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    .line 2208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v14, :cond_e

    .line 2210
    invoke-virtual {v0, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2211
    const-string v7, "appChannel %s length is over limit %d substring to %s"

    .line 2212
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v0, v14, v9

    aput-object v15, v14, v5

    aput-object v1, v14, v10

    .line 2211
    invoke-static {v7, v14}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 2215
    :cond_e
    sget-object v14, Lcom/uqm/crashsight/b;->d:Lcom/uqm/crashsight/proguard/d;

    const-string v16, "app_channel"

    .line 2216
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v15, 0x22c

    .line 2215
    invoke-virtual/range {v14 .. v19}, Lcom/uqm/crashsight/proguard/d;->a(ILjava/lang/String;[BLcom/uqm/crashsight/proguard/c;Z)Z

    .line 2217
    iput-object v0, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->p:Ljava/lang/String;

    goto :goto_7

    .line 2220
    :cond_f
    sget-object v0, Lcom/uqm/crashsight/b;->d:Lcom/uqm/crashsight/proguard/d;

    const/16 v1, 0x22c

    const/4 v7, 0x0

    .line 2221
    invoke-virtual {v0, v1, v7, v5}, Lcom/uqm/crashsight/proguard/d;->a(ILcom/uqm/crashsight/proguard/c;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2223
    const-string v1, "app_channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_10

    .line 2225
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->p:Ljava/lang/String;

    .line 2230
    :cond_10
    :goto_7
    const-string v0, "[param] Set App channel: %s"

    iget-object v1, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->p:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v0, v7}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_8

    :catch_2
    move-exception v0

    .line 2232
    :try_start_c
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    .line 2236
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0x64

    if-le v1, v7, :cond_11

    .line 2239
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2240
    const-string v14, "appPackageName %s length is over limit %d substring to %s"

    .line 2241
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v15, v7, v5

    aput-object v1, v7, v10

    .line 2240
    invoke-static {v14, v7}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 2245
    :cond_11
    iput-object v0, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->c:Ljava/lang/String;

    .line 2246
    const-string v0, "[param] Set App package: %s"

    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v0, v7}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2250
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0x64

    if-le v1, v7, :cond_13

    .line 2253
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2254
    const-string v14, "deviceId %s length is over limit %d substring to %s"

    .line 2255
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v15, v7, v5

    aput-object v1, v7, v10

    .line 2254
    invoke-static {v14, v7}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 2258
    :cond_13
    invoke-virtual {v11, v0}, Lcom/uqm/crashsight/crashreport/common/info/a;->c(Ljava/lang/String;)V

    .line 2259
    const-string v1, "[param] Set device ID: %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v1, v7}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2263
    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0x64

    if-le v1, v7, :cond_15

    .line 2266
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2267
    const-string v14, "deviceModel %s length is over limit %d substring to %s"

    .line 2268
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v7, v6, v5

    aput-object v1, v6, v10

    .line 2267
    invoke-static {v14, v6}, Lcom/uqm/crashsight/proguard/q;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 2743
    :cond_15
    iput-object v0, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->h:Ljava/lang/String;

    .line 2272
    const-string v1, "[param] Set device model: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-static {v1, v5}, Lcom/uqm/crashsight/proguard/q;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2276
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->isUploadProcess()Z

    move-result v0

    iput-boolean v0, v11, Lcom/uqm/crashsight/crashreport/common/info/a;->e:Z

    .line 2279
    invoke-virtual/range {p3 .. p3}, Lcom/uqm/crashsight/CrashSightStrategy;->isCrashSightLogUpload()Z

    move-result v0

    sput-boolean v0, Lcom/uqm/crashsight/proguard/s;->a:Z

    .line 167
    :cond_17
    invoke-virtual {v12}, Lcom/uqm/crashsight/crashreport/common/strategy/a;->a()V

    .line 168
    invoke-static {}, Lcom/uqm/crashsight/proguard/s;->a()V

    .line 169
    invoke-static {v8, v3}, Lcom/uqm/crashsight/crashreport/biz/c;->a(Landroid/content/Context;Lcom/uqm/crashsight/CrashSightStrategy;)V

    const/4 v1, 0x0

    .line 172
    :goto_9
    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-ge v1, v0, :cond_19

    .line 174
    :try_start_d
    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/a;

    iget v0, v0, Lcom/uqm/crashsight/a;->id:I

    invoke-virtual {v13, v0}, Lcom/uqm/crashsight/proguard/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 175
    sget-object v0, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/a;

    invoke-virtual {v0, v8, v2, v3}, Lcom/uqm/crashsight/a;->init(Landroid/content/Context;ZLcom/uqm/crashsight/CrashSightStrategy;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 178
    :try_start_e
    invoke-static {v0}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/Throwable;)V

    :cond_18
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 181
    :cond_19
    const-string v0, "[init] CrashSight initialization finished."

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uqm/crashsight/proguard/q;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 182
    monitor-exit v4

    return-void

    :catchall_4
    move-exception v0

    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0
.end method

.method public static declared-synchronized a(Lcom/uqm/crashsight/a;)V
    .locals 2

    const-class v0, Lcom/uqm/crashsight/b;

    monitor-enter v0

    .line 290
    :try_start_0
    sget-object v1, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    sget-object v1, Lcom/uqm/crashsight/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 296
    sget-boolean v0, Lcom/uqm/crashsight/b;->e:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 335
    sget-object v0, Lcom/uqm/crashsight/b;->f:Ljava/lang/String;

    return-object v0
.end method
