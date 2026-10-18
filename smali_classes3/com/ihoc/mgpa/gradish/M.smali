.class public abstract Lcom/ihoc/mgpa/gradish/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    .line 9
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->tryLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    const-string v0, "-9"

    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    const-string v0, "-10"

    return-object v0

    .line 15
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    const-string v0, "-13"

    return-object v0

    .line 18
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 20
    const-string v0, "-11"

    return-object v0

    .line 21
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_4

    .line 22
    const-string v0, "-12"

    return-object v0

    :cond_4
    const/4 v1, 0x2

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "XIDV8"

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ihoc/mgpa/gradish/M;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/M;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/ihoc/mgpa/MGPANative;->yje_v8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ihoc/mgpa/gradish/M;->a:Ljava/lang/String;

    .line 8
    :cond_0
    sget-object p0, Lcom/ihoc/mgpa/gradish/M;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 5
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->tryLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    const-string v0, "-9"

    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    const-string v0, "-10"

    return-object v0

    .line 11
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    const-string v0, "-13"

    return-object v0

    .line 14
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 16
    const-string v0, "-11"

    return-object v0

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_4

    .line 18
    const-string v0, "-12"

    return-object v0

    :cond_4
    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "XIDV8"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ihoc/mgpa/gradish/M;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/M;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/ihoc/mgpa/MGPANative;->zkf_v8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ihoc/mgpa/gradish/M;->b:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object p0, Lcom/ihoc/mgpa/gradish/M;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->tryLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "-9"

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    const-string v0, "-10"

    return-object v0

    .line 7
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    const-string v0, "-13"

    return-object v0

    .line 10
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    const-string v0, "-11"

    return-object v0

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_4

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID length is not right, ple check! errorid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    const-string v0, "-12"

    return-object v0

    :cond_4
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    const-string v2, "UIDV8"

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->tryLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "-9"

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    const-string v0, "-10"

    return-object v0

    .line 7
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    const-string v0, "-13"

    return-object v0

    .line 10
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    const-string v0, "-11"

    return-object v0

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_4

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID length is not right, ple check! errorid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    const-string v0, "-12"

    return-object v0

    :cond_4
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v1, "UIDV8"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/SharedPrefUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "-2"

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->c()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    const-string v0, "-1"

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "-2"

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/M;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    const-string v0, "-1"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/MGPANative;->tryLoadLibrary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "-9"

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    const-string v0, "-10"

    return-object v0

    .line 7
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/M;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    const-string v0, "-11"

    return-object v0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_3

    .line 11
    const-string v0, "-12"

    return-object v0

    :cond_3
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSafeUniqueIdReportOpen()Z

    move-result v0

    return v0
.end method

.method private static i()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isUniqueIdReportOpen()Z

    move-result v0

    return v0
.end method
