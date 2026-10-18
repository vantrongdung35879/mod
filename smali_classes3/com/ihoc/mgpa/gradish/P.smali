.class public final Lcom/ihoc/mgpa/gradish/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcom/ihoc/mgpa/gradish/P;


# instance fields
.field private a:Lcom/ihoc/mgpa/gradish/Q;

.field private b:Lcom/ihoc/mgpa/gradish/Q;

.field private c:Lcom/ihoc/mgpa/gradish/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->a:Lcom/ihoc/mgpa/gradish/Q;

    .line 5
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->b:Lcom/ihoc/mgpa/gradish/Q;

    .line 6
    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    return-void
.end method

.method public static b()Lcom/ihoc/mgpa/gradish/P;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/P;->d:Lcom/ihoc/mgpa/gradish/P;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/P;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/P;->d:Lcom/ihoc/mgpa/gradish/P;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/P;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/P;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/P;->d:Lcom/ihoc/mgpa/gradish/P;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/P;->d:Lcom/ihoc/mgpa/gradish/P;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/Q;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 2
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "this device support standard haptic player!"

    invoke-static {v4, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/gradish/Q;->a(Landroid/content/Context;I)Lcom/ihoc/mgpa/gradish/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->a:Lcom/ihoc/mgpa/gradish/Q;

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/gradish/Q;->a(Landroid/content/Context;I)Lcom/ihoc/mgpa/gradish/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->b:Lcom/ihoc/mgpa/gradish/Q;

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCommonHapticFuncOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cloud config enforce using standard haptic player first!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->a:Lcom/ihoc/mgpa/gradish/Q;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isAndroidHapticOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cloud config enforce using android haptic player first!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->b:Lcom/ihoc/mgpa/gradish/Q;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 15
    :cond_1
    :try_start_2
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "this device don\'t support standard haptic player!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/gradish/Q;->a(Landroid/content/Context;I)Lcom/ihoc/mgpa/gradish/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->b:Lcom/ihoc/mgpa/gradish/Q;

    .line 17
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isAndroidHapticOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cloud config enable using android haptic player!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->b:Lcom/ihoc/mgpa/gradish/Q;

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 23
    :cond_2
    :try_start_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "haptic feature is not open in cloud config, ple call the team if need!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "path"

    const-string v1, "json"

    .line 39
    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz v2, :cond_1

    .line 41
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    const-string p1, "loop"

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 43
    const-string v3, "amplitude"

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    const-string v4, "interval"

    const/16 v5, 0x32

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 45
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v4, v3}, Lcom/ihoc/mgpa/gradish/P;->b(Ljava/lang/String;III)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v4, v3}, Lcom/ihoc/mgpa/gradish/P;->a(Ljava/lang/String;III)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    const-string v0, "playPattern: run exception, ple check!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 54
    const-string v0, "playPattern: value parse to json exception, ple check!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ihoc/mgpa/gradish/P;->b(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    const-string p2, "HapticPlay: play file exception, ple check!"

    invoke-static {p2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/P;->b:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "android haptic player is null! maybe cloud config is not open!"

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/P;->a:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz p1, :cond_2

    .line 31
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/P;->b:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz p1, :cond_3

    .line 33
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x32

    const/16 v1, 0xff

    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ihoc/mgpa/gradish/P;->a(Ljava/lang/String;III)V

    return-void
.end method

.method public b(Ljava/lang/String;III)V
    .locals 1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    const/16 v0, 0x32

    if-ge p3, v0, :cond_1

    const/16 p3, 0x32

    :cond_1
    const/16 v0, 0xff

    if-lez p4, :cond_2

    if-le p4, v0, :cond_3

    :cond_2
    const/16 p4, 0xff

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ihoc/mgpa/gradish/Q;->a(Ljava/lang/String;III)V

    :cond_4
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/Q;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x32

    const/16 v1, 0xff

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ihoc/mgpa/gradish/P;->b(Ljava/lang/String;III)V

    return-void
.end method

.method public d()I
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/Q;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/Q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isCommonHapticFuncOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/Q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isAndroidHapticOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/Q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/P;->c:Lcom/ihoc/mgpa/gradish/Q;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/Q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
