.class public final Lcom/tencent/qimei/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile g:Lcom/tencent/qimei/i/c;


# instance fields
.field public final a:Lcom/tencent/qimei/i/b;

.field public final b:Lcom/tencent/qimei/i/b;

.field public final c:Lcom/tencent/qimei/i/b;

.field public final d:Lcom/tencent/qimei/i/b;

.field public e:Ljava/lang/Boolean;

.field public f:Lcom/tencent/qimei/i/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/qimei/i/b;

    const-string/jumbo v1, "udid"

    invoke-direct {v0, v1}, Lcom/tencent/qimei/i/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/i/c;->a:Lcom/tencent/qimei/i/b;

    .line 3
    new-instance v0, Lcom/tencent/qimei/i/b;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, Lcom/tencent/qimei/i/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/i/c;->b:Lcom/tencent/qimei/i/b;

    .line 4
    new-instance v0, Lcom/tencent/qimei/i/b;

    const-string/jumbo v1, "vaid"

    invoke-direct {v0, v1}, Lcom/tencent/qimei/i/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/i/c;->d:Lcom/tencent/qimei/i/b;

    .line 5
    new-instance v0, Lcom/tencent/qimei/i/b;

    const-string v1, "aaid"

    invoke-direct {v0, v1}, Lcom/tencent/qimei/i/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qimei/i/c;->c:Lcom/tencent/qimei/i/b;

    return-void
.end method

.method public static final a()Lcom/tencent/qimei/i/c;
    .locals 2

    .line 225
    sget-object v0, Lcom/tencent/qimei/i/c;->g:Lcom/tencent/qimei/i/c;

    if-nez v0, :cond_0

    .line 226
    const-class v0, Lcom/tencent/qimei/i/c;

    .line 227
    monitor-enter v0

    .line 228
    :try_start_0
    new-instance v1, Lcom/tencent/qimei/i/c;

    invoke-direct {v1}, Lcom/tencent/qimei/i/c;-><init>()V

    sput-object v1, Lcom/tencent/qimei/i/c;->g:Lcom/tencent/qimei/i/c;

    .line 229
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 232
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/qimei/i/c;->g:Lcom/tencent/qimei/i/c;

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/tencent/qimei/i/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/qimei/i/d;

    invoke-direct {v0}, Lcom/tencent/qimei/i/d;-><init>()V

    if-nez p0, :cond_0

    .line 3
    const-string p0, "parseValue fail, cursor is null."

    invoke-static {p0}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7
    const-string/jumbo v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 9
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qimei/i/d;->c:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_1
    const-string v1, "parseValue fail, index < 0."

    invoke-static {v1}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    .line 15
    :goto_0
    const-string v1, "code"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 17
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/qimei/i/d;->a:I

    goto :goto_1

    .line 20
    :cond_2
    const-string v1, "parseCode fail, index < 0."

    invoke-static {v1}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    .line 23
    :goto_1
    const-string v1, "expired"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 25
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/qimei/i/d;->b:J

    goto :goto_2

    .line 28
    :cond_3
    const-string p0, "parseExpired fail, index < 0."

    invoke-static {p0}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_4
    const-string p0, "parseValue fail, cursor is closed."

    invoke-static {p0}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MzOpenIdManager "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qimei/af/b;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/qimei/i/b;
    .locals 1

    .line 233
    const-string v0, "oaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object p1, p0, Lcom/tencent/qimei/i/c;->b:Lcom/tencent/qimei/i/b;

    goto :goto_0

    .line 236
    :cond_0
    const-string/jumbo v0, "vaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object p1, p0, Lcom/tencent/qimei/i/c;->d:Lcom/tencent/qimei/i/b;

    goto :goto_0

    .line 239
    :cond_1
    const-string v0, "aaid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object p1, p0, Lcom/tencent/qimei/i/c;->c:Lcom/tencent/qimei/i/b;

    goto :goto_0

    .line 242
    :cond_2
    const-string/jumbo v0, "udid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/tencent/qimei/i/c;->a:Lcom/tencent/qimei/i/b;

    :goto_0
    return-object p1
.end method

.method public final a(Landroid/content/Context;Lcom/tencent/qimei/i/b;)Ljava/lang/String;
    .locals 9

    .line 33
    const-string v0, "not support, forceQuery isSupported: "

    const-string v1, "forceQuery isSupported : "

    .line 34
    iget-wide v2, p2, Lcom/tencent/qimei/i/b;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 35
    iget-object p1, p2, Lcom/tencent/qimei/i/b;->d:Ljava/lang/String;

    goto/16 :goto_2

    .line 36
    :cond_0
    iget-object v2, p2, Lcom/tencent/qimei/i/b;->c:Ljava/lang/String;

    const-string v3, "queryId : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    .line 37
    const-string v2, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p2, Lcom/tencent/qimei/i/b;->c:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 41
    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;Z)Z

    .line 45
    invoke-virtual {p0, p1, v4}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;Z)Z

    move-result p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 89
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catch_0
    nop

    goto :goto_1

    .line 90
    :cond_2
    :try_start_2
    invoke-static {v3}, Lcom/tencent/qimei/i/c;->a(Landroid/database/Cursor;)Lcom/tencent/qimei/i/d;

    move-result-object v1

    .line 91
    iget-object v6, v1, Lcom/tencent/qimei/i/d;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :try_start_3
    iput-object v6, p2, Lcom/tencent/qimei/i/b;->d:Ljava/lang/String;

    .line 93
    iget-wide v7, v1, Lcom/tencent/qimei/i/d;->b:J

    .line 94
    iput-wide v7, p2, Lcom/tencent/qimei/i/b;->b:J

    .line 95
    iget v7, v1, Lcom/tencent/qimei/i/d;->a:I

    .line 96
    iput v7, p2, Lcom/tencent/qimei/i/b;->a:I

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lcom/tencent/qimei/i/b;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " errorCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/tencent/qimei/i/b;->a:I

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    .line 98
    iget p2, v1, Lcom/tencent/qimei/i/d;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_3

    .line 123
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v6

    .line 124
    :cond_3
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0, p1, v5}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;Z)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_4

    .line 144
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v6

    .line 145
    :cond_4
    :try_start_5
    invoke-virtual {p0, p1, v4}, Lcom/tencent/qimei/i/c;->a(Landroid/content/Context;Z)Z

    move-result p1

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v6

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catch_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_5
    throw p1

    :catch_2
    nop

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 159
    :catch_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object p1, v2

    :goto_2
    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qimei/i/c;->f:Lcom/tencent/qimei/i/a;

    if-nez v0, :cond_1

    .line 213
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    const-string v0, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    new-instance v2, Lcom/tencent/qimei/i/a;

    invoke-direct {v2}, Lcom/tencent/qimei/i/a;-><init>()V

    iput-object v2, p0, Lcom/tencent/qimei/i/c;->f:Lcom/tencent/qimei/i/a;

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 217
    const-string v0, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 220
    :cond_0
    const-string v4, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lbq/log$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 224
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Z)Z
    .locals 8

    .line 162
    const-string v0, "querySupport, result : "

    .line 165
    iget-object v1, p0, Lcom/tencent/qimei/i/c;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 167
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto/16 :goto_6

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 177
    :goto_0
    const-string v3, "com.meizu.flyme.openidsdk"

    invoke-virtual {v1, v3, p2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_5

    .line 183
    const-string p1, "is not Supported, for isLegalProvider : false"

    invoke-static {p1}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    .line 184
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/tencent/qimei/i/c;->e:Ljava/lang/Boolean;

    :cond_4
    :goto_2
    const/4 p1, 0x0

    goto :goto_6

    .line 187
    :cond_5
    const-string v1, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo p1, "supported"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_6

    .line 191
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/tencent/qimei/i/c;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_4

    .line 196
    :cond_6
    :goto_3
    :try_start_1
    invoke-static {v1}, Lcom/tencent/qimei/i/c;->a(Landroid/database/Cursor;)Lcom/tencent/qimei/i/d;

    move-result-object p1

    iget-object p1, p1, Lcom/tencent/qimei/i/d;->c:Ljava/lang/String;

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qimei/i/c;->b(Ljava/lang/String;)V

    .line 199
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qimei/i/c;->e:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    .line 209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return p1

    :catch_1
    nop

    if-eqz v1, :cond_4

    goto :goto_5

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_8
    throw p1

    :goto_4
    if-eqz v1, :cond_4

    .line 209
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_6
    return p1
.end method
