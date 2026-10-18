.class public Lcom/ihoc/mgpa/gradish/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/U;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Landroid/content/ContentProviderClient;
    .locals 3

    .line 1
    const-string v0, "content://com.vivo.game.res.download/"

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


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 39
    const-string p2, "md5"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "none"

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l1;->c()Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 75
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 76
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-object v2

    .line 77
    :cond_1
    :try_start_1
    const-string v3, "content://com.vivo.game.res.download/res_task?query=list"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 79
    invoke-virtual {v3, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    .line 81
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 103
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 104
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-object v2

    .line 105
    :cond_2
    :try_start_2
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 106
    const-string v3, "fileUri"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 107
    const-string/jumbo v4, "state"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz p2, :cond_4

    if-ltz v3, :cond_4

    if-gez v4, :cond_3

    goto :goto_0

    .line 112
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 113
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 116
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    if-ne v7, v5, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_3

    .line 123
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 124
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-object v6

    .line 141
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_0
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 143
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :cond_5
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 126
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return-object v2

    .line 149
    :goto_2
    invoke-static {p2}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 150
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 151
    throw p1
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 11

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/U;->a:Ljava/lang/String;

    const-string v1, "isAppStoreSupportPreDownload  "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l1;->c()Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 20
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 21
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return v2

    .line 22
    :cond_1
    :try_start_1
    const-string v3, "content://com.vivo.game.res.download/res_task?query=support"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    .line 23
    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 30
    :cond_2
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 31
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return v2

    :catchall_0
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v0

    .line 34
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :cond_3
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 33
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return v2

    .line 36
    :goto_1
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/io/Closeable;)V

    .line 37
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 38
    throw v2
.end method

.method public a(Ljava/util/List;)Z
    .locals 6

    .line 152
    sget-object v0, Lcom/ihoc/mgpa/gradish/U;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFileInAppStore  files = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/l1;->c()Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 173
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return v2

    .line 174
    :cond_1
    :try_start_1
    const-string v3, "content://com.vivo.game.res.download/res_task"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 177
    const-string v5, "file"

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 180
    invoke-virtual {v1, p1, v0, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 186
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    return v2

    :goto_2
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/CloserUtil;->close(Ljava/lang/AutoCloseable;)V

    .line 190
    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method
