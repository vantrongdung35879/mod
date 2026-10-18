.class public Lcom/ihoc/mgpa/gradish/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/U;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/gradish/O$a;
    }
.end annotation


# instance fields
.field public b:Ljava/util/HashMap;

.field public c:Z

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/O;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/O;->c:Z

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/ihoc/mgpa/gradish/O;->d:J

    return-void
.end method

.method private c()Landroid/content/ContentProviderClient;
    .locals 3

    .line 1
    const-string v0, "content://com.huawei.appgallery.game.CONTENT_URI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private d()V
    .locals 11

    const-string v0, "[init]: returnCode: "

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6
    :try_start_0
    iput-boolean v2, p0, Lcom/ihoc/mgpa/gradish/O;->c:Z

    .line 7
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/O;->c()Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    const-string v4, "queryDetail"

    const-string v5, ""

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    const-string v2, "returnCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 10
    :goto_0
    sget-object v4, Lcom/ihoc/mgpa/gradish/U;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_4

    .line 13
    const-string v0, "fileUris"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v2, "fileLengths"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 15
    const-string v4, "fileNames"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    array-length v4, v0

    array-length v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 21
    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 24
    new-instance v6, Lcom/ihoc/mgpa/gradish/O$a;

    aget-object v7, v0, v5

    aget-object v8, v1, v5

    aget-wide v9, v2, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/ihoc/mgpa/gradish/O$a;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 25
    iget-object v7, p0, Lcom/ihoc/mgpa/gradish/O;->b:Ljava/util/HashMap;

    aget-object v8, v1, v5

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v7, Lcom/ihoc/mgpa/gradish/U;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[init]: add PreFile Info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 32
    :cond_3
    :goto_2
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 33
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v1

    .line 32
    :cond_4
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-void

    .line 35
    :goto_4
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 36
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p1, "none"

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/ihoc/mgpa/gradish/O;->c:Z

    if-nez v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/O;->d()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/O;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ihoc/mgpa/gradish/O$a;

    if-nez p2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p2, Lcom/ihoc/mgpa/gradish/O$a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p2

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/gradish/U;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 25
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/O;->c()Landroid/content/ContentProviderClient;

    move-result-object p1

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v1, "submitUpdateResult"

    const-string v2, ""

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 33
    :try_start_1
    sget-object v1, Lcom/ihoc/mgpa/gradish/U;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-void

    .line 35
    :goto_1
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 36
    throw v0
.end method

.method public a()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v1, p0, Lcom/ihoc/mgpa/gradish/O;->d:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    const-string v2, "com.huawei.appmarket"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/ihoc/mgpa/gradish/O;->d:J

    .line 6
    :cond_0
    iget-wide v1, p0, Lcom/ihoc/mgpa/gradish/O;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v3, 0x72899b6

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/O;->c()Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    const-string p1, "BEGIN"

    goto :goto_0

    :cond_1
    const-string p1, "END"

    .line 8
    :goto_0
    const-string v2, "action"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string/jumbo p1, "submitResAction"

    const-string v2, ""

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    sget-object v1, Lcom/ihoc/mgpa/gradish/U;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-void

    .line 16
    :goto_2
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 17
    throw p1
.end method
